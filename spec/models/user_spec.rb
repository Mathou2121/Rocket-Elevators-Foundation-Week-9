require 'spec_helper'
require 'rails_helper'


RSpec.describe User, type: :model do
	let(:user) { User.new }
    context "Create User" do
		it "should create a user" do
			user = User.new.save
			expect(user).to eq(false)
		end
	end

    it "Should have 120 users" do
        User.create
        expect(User.count).to eq 120
    end

	context "attributes exist" do
		it "return false if not" do
			user.should respond_to(:id, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :created_at, :updated_at )
		end
	end
end