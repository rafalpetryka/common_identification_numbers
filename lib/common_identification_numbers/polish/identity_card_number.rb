module CommonIdentificationNumbers
  module Polish
    class IdentityCardNumber < BaseIdentityCardNumber
      self.pattern = prepare_pattern(3, 5)
    end
  end
end
