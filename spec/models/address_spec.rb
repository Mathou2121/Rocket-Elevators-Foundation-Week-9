require 'spec_helper'
require 'rails_helper'


# this will tell me if any addres exist 
RSpec.describe Address, type: :model do
	let(:address) { Address.new }
	
	context "Create Address" do
		it "should create an address" do
			address = Address.new.save
			expect(address).to eq(true)
		end
	end

	context "Does an address exist" do
		it "return if model address exist" do
			expect(address).to be_valid
		end
	end
end