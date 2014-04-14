module CommonIdentificationNumbers
  module Polish
    class IdentityCardNumber < CommonIdentificationNumbers::Base
      LETTERS = Hash[('A'..'Z').to_a.each_with_index.map { |l, i| [l, i + 10] }]
      self.pattern =  /^[A-Z]{3}\d{6}$/
      self.digit_weights = [7, 3, 1, 9, 7, 3, 1, 7, 3].freeze

      def validate_control_value
        control_value % 10 == 0
      end

      def digits
        @digits ||= value.split('').map { |char| char =~ /\d/ ? char.to_i : LETTERS[char] }
      end
    end
  end
end
