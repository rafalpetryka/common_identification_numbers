module CommonIdentificationNumbers
  module Polish
    class Regon14 < CommonIdentificationNumbers::Base
      self.digit_weights =  [2, 4, 8, 5, 0, 9, 7, 3, 6, 1, 2, 4, 8].freeze
      self.pattern =  /^\d{14}$/
      self.modulo = 11
    end
  end
end
