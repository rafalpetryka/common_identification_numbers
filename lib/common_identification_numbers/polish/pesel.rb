module CommonIdentificationNumbers
  module Polish
    class Pesel < CommonIdentificationNumbers::Base
      self.digit_weights = [1, 3, 7, 9, 1, 3, 7, 9, 1, 3, 1].freeze
      self.pattern =  /\d{11}/

      def validate_control_value
        control_value % 10 == 0
      end
    end
  
  end
end
