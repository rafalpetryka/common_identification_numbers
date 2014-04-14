module CommonIdentificationNumbers
  class Base
    attr_reader :value

    class << self
      attr_accessor :pattern, :modulo, :digit_weights
    end

    def initialize(value)
      @value = value
    end

    def valid?
      validate
    end

    def validate
      validate_regexp && validate_control_value
    end

    def validate_regexp
      self.class.pattern =~ value
    end

    def validate_control_value
      mod = control_value % self.class.modulo
      mod = 0 if mod == 10
      mod === @digits.last
    end

    def digits
      @digits ||= value.split('').select{|digit| digit.to_i.to_s == digit}.map(&:to_i)
    end
    
    def control_value
      self.class.digit_weights.each_with_index.inject(0){|sum, (factor, idx)| sum + factor * digits[idx]}
    end
    
  end
end
