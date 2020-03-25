require 'common_identification_numbers'
require 'active_model'

module ActiveModel
  module Validations
    class IdentityCardNumberValidator < ActiveModel::EachValidator

      def validate_each(record, attribute, value)
        @message = options[:message] || "invalid format"
        record.errors.add(attribute,  @message) unless CommonIdentificationNumbers::Polish::IdentityCardNumber.new(value).valid?
      end

    end

    module HelperMethods

      def validates_identity_card_number_of(*attr_names)
        validates_with IdentityCardNumberValidator, _merge_attributes(attr_names)
      end

    end

  end
end
