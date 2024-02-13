require 'spec_helper'

class MobileIdentityCardNumberModel
  include ActiveModel::Validations

  attr_accessor :mobile_identity_card_number, :mobile_identity_card_number2

  validates :mobile_identity_card_number, :presence => true, :mobile_identity_card_number => true

  validates_mobile_identity_card_number_of :mobile_identity_card_number2
end

  
  describe "MobileIdentityCardNumberValidator" do
    before(:each) do
      @valid_mobile_identity_card_number = "MAAA62345"
      @invalid_mobile_identity_card_number = "MAVS23256"

      @model = MobileIdentityCardNumberModel.new
    end

    describe "with identity card number 1" do
      before(:each) do
        @model.mobile_identity_card_number2 = @valid_mobile_identity_card_number
      end
        
      it "should be valid" do
       @model.should_not be_valid 
       @model.mobile_identity_card_number = @valid_mobile_identity_card_number
       @model.valid?
       puts '**********************'
       puts @model.errors.messages
       @model.should be_valid
      end
      
      it "should be invalid" do
        @model.mobile_identity_card_number = @invalid_mobile_identity_card_number
        @model.should_not be_valid
      end
    end

    describe "with identity card number 2" do
      before(:each) do
        @model.mobile_identity_card_number = @valid_mobile_identity_card_number
      end

      it "should be valid" do
        @model.should be_invalid
        @model.mobile_identity_card_number2 = @valid_mobile_identity_card_number
        @model.should be_valid
      end

      it "should be invalid when nil" do 
        @model.mobile_identity_card_number2 = nil
        @model.should be_invalid
      end

      it "should be invalid when empty" do
        @model.mobile_identity_card_number2 == ""
        @model.should be_invalid
      end

      it "should be invalid when invalid identity card number" do
        @model.mobile_identity_card_number2 == @invalid_mobile_identity_card_number
        @model.should be_invalid
      end

    end
  end
