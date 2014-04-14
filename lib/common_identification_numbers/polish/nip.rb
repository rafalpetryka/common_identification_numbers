module CommonIdentificationNumbers
  module Polish
    class Nip < CommonIdentificationNumbers::Base
      self.digit_weights = [ 6, 5, 7, 2, 3, 4, 5, 6, 7].freeze
      self.modulo = 11
      self.pattern = /^\d{10}$/
    end
  end
end
