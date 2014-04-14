require 'spec_helper'

describe "Nip"  do

  it "should be valid"do
    valid_numbers = %w[1234563218 1234563218]
    valid_numbers.each do |n|
        nip = CommonIdentificationNumbers::Polish::Nip.new(n)
        nip.should be_valid
    end
  end
end
