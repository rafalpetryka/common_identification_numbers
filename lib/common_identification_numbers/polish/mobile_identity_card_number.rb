module CommonIdentificationNumbers
  module Polish
    class MobileIdentityCardNumber < BaseIdentityCardNumber
      self.pattern = prepare_pattern(4, 4)
    end
  end
end