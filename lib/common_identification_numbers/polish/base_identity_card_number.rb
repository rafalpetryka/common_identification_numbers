module CommonIdentificationNumbers
  module Polish
    class BaseIdentityCardNumber < CommonIdentificationNumbers::Base
      LETTERS = ('A'..'Z').zip(10..35).to_h.freeze
      DIGIT_WEIGHTS = [7, 3, 1, 7, 3, 1, 7, 3, 1].freeze

      def get_letter_value(letter)
        letter =~ /\d/ ? letter.to_i : LETTERS[letter]
      end

      def validate_control_value
        control_value % 10 == pattern_match[:control_digit].to_i
      end
      
      def control_value
        without_digit_control = "#{pattern_match[:serie]}#{pattern_match[:rest_of_number]}"
        without_digit_control.chars.map.with_index do |char, index|
          get_letter_value(char) * DIGIT_WEIGHTS[index]
        end.sum
      end

      private

      def self.prepare_pattern(serie_length, rest_of_number_length)
        /(^(?<serie>[A-Z]{#{serie_length}})(?<control_digit>[0-9]{1})(?<rest_of_number>[0-9]{#{rest_of_number_length}})$)/
      end

      def pattern_match
        @pattern_match ||= self.class.pattern.match(value)
      end
    end
  end
end
