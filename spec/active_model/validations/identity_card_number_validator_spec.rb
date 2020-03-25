require 'spec_helper'

class BasicIdentityCardNumberModel
  include ActiveModel::Validations

  attr_accessor :identity_card_number, :identity_card_number2

  validates :identity_card_number, :presence => true, :identity_card_number => true

  validates_identity_card_number_of :identity_card_number2
end

  
  describe "IdentityCardNumberValidator" do
    before(:each) do
      @valid_identity_card_number = "ARW473687"
      @invalid_identity_card_number = "ARW473683"

      @model = BasicIdentityCardNumberModel.new
    end

    describe "with identity card number 1" do
      before(:each) do
        @model.identity_card_number2 = @valid_identity_card_number
      end
        
      it "should be valid" do
       @model.should_not be_valid 
       @model.identity_card_number = @valid_identity_card_number
       @model.should be_valid
      end
      
      it "should be invalid" do
        @model.identity_card_number = @invalid_identity_card_number
        @model.should_not be_valid
      end
    end

    describe "with identity card number 2" do
      before(:each) do
        @model.identity_card_number = @valid_identity_card_number
      end

      it "should be valid" do
        @model.should be_invalid
        @model.identity_card_number2 = @valid_identity_card_number
        @model.should be_valid
      end

      it "should be invalid when nil" do 
        @model.identity_card_number2 = nil
        @model.should be_invalid
      end

      it "should be invalid when empty" do
        @model.identity_card_number2 == ""
        @model.should be_invalid
      end

      it "should be invalid when invalid identity card number" do
        @model.identity_card_number2 == @invalid_identity_card_number
        @model.should be_invalid
      end

    end
  end
