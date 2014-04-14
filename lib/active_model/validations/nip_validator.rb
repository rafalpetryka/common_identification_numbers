require 'common_identification_numbers'
require 'active_model'

module ActiveModel
  module Validations
    class NipValidator < ActiveModel::EachValidator

      def validate_each(record, attribute, value)
        @message = options[:message] || "invalid format"
        record.errors.add(attribute,  @message) unless CommonIdentificationNumbers::Polish::Nip.new(value).valid?
      end

    end

    module HelperMethods

      def validates_nip_of(*attr_names)
        validates_with NipValidator, _merge_attributes(attr_names)
      end

    end

  end
end
