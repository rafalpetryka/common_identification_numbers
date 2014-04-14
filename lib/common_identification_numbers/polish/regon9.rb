module CommonIdentificationNumbers
  module Polish
    class Regon9 < CommonIdentificationNumbers::Base
      self.digit_weights =  [8, 9, 2, 3, 4, 5, 6, 7].freeze
      self.pattern =  /^\d{9}$/
      self.modulo = 11
    end
  end
end
