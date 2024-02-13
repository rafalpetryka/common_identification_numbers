require 'spec_helper'

describe "MobileIdentityCardNumber"  do

  it "should be valid"do
    valid_numbers = %w[MAYX68528 MAVS23255]
    valid_numbers.each do |n|
      nip = CommonIdentificationNumbers::Polish::MobileIdentityCardNumber.new(n)
      nip.should be_valid
    end
  end

  it "should not be valid"do
    invalid_numbers = %w[MAYX68529 MAVS23256]
    invalid_numbers.each do |n|
      nip = CommonIdentificationNumbers::Polish::MobileIdentityCardNumber.new(n)
      nip.should_not be_valid
    end
  end

end
