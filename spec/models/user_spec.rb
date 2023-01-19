require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.new(
      first_name: 'test',
      last_name: 'test',
      username: 'test101',
      email: 'testuser@hotmail.com',
      password: 'password',
      gender: 'Prefer not to say'
    )
  end

  describe 'Validations' do
    it "is valid with valid attributes" do
      expect(@user).to be_valid
    end

    it "is invalid with an incorrectly formatted username" do
      @user.username = "test.user!"
      expect(@user).to_not be_valid
      @user.username = "test101"
    end

    it "is invalid with a gender not in the options list" do
      @user.gender = "Test"
      expect(@user).to_not be_valid
    end
  end
end
