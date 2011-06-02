require 'active_record'

if ActiveRecord::VERSION::STRING =~ /^3\.1/
  require 'active_record/reflection'
  require 'active_record/associations'
  require 'active_record/associations/belongs_to_polymorphic_association'

  module ActiveRecord
    module Reflection # :nodoc:
      class AssociationReflection
        def foreign_subtype
          @foreign_subtype ||= options[:foreign_subtype] || "#{name}_subtype"
        end
      end
    end
    
    # = Active Record Belongs To Polymorphic Association
    module Associations
      class BelongsToPolymorphicAssociation < BelongsToAssociation #:nodoc:
        private

          def replace_keys(record)
            super
            owner[reflection.foreign_type] = record && record.class.base_class.name
            owner[reflection.foreign_subtype] = record && record.class.sti_name
          end
      end
    end
  end

end