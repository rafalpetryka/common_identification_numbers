require 'spec_helper'

describe "IdentityCardNumber"  do

  it "should be valid"do
    valid_numbers = %w[ARW473687 AGA117360]
    valid_numbers.each do |n|
      nip = CommonIdentificationNumbers::Polish::IdentityCardNumber.new(n)
      nip.should be_valid
    end
  end

  it "should not be valid"do
    valid_numbers = %w[ARW473683 AGA117361]
    valid_numbers.each do |n|
      nip = CommonIdentificationNumbers::Polish::IdentityCardNumber.new(n)
      nip.should_not be_valid
    end
  end

end
