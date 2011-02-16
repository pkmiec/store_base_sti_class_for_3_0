class Author < ActiveRecord::Base
  has_many :posts
  
  has_many :tagging,  :through => :posts                       # through polymorphic has_one
  has_many :taggings, :through => :posts, :source => :taggings # through polymorphic has_many
  has_many :tags,     :through => :posts                       # through has_many :through
end

class Post < ActiveRecord::Base
  belongs_to :author
  
  has_one  :tagging, :as => :taggable
  has_many :taggings, :as => :taggable
  has_many :tags, :through => :taggings
end

class SpecialPost < Post
end

class Tagging < ActiveRecord::Base
  belongs_to :tag, :include => :tagging
  belongs_to :polytag, :polymorphic => true
  belongs_to :taggable, :polymorphic => true, :counter_cache => true  
end

class Tag < ActiveRecord::Base
  has_one  :tagging

  has_many :taggings
  has_many :taggables, :through => :taggings
  has_many :tagged_posts, :through => :taggings, :source => :taggable, :source_type => 'Post'
  
  has_many :polytaggings, :as => :polytag, :class_name => 'Tagging'
  has_many :polytagged_posts, :through => :polytaggings, :source => :taggable, :source_type => 'Post'
end

class SpecialTag < Tag
end