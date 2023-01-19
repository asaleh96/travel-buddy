require 'rails_helper'

RSpec.describe Interest, type: :model do
  before do
    @interest = Interest.new(name: 'Adventure', description: 'Lorem ipsum')
    @invalid_interest = Interest.new(name: 'Invalid', description: 'Lorem ipsum')
    @user = User.new(email: "test@gmail.com", password: "123456")
  end
  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(@interest).to be_valid
    end

    it 'is not valid when the name is not part of the interests array' do
      expect(@invalid_interest).to_not be_valid
    end
  end

  describe "Associations" do
    it "has and belongs to many users" do
      assc = described_class.reflect_on_association(:users)
      expect(assc.macro).to eq :has_and_belongs_to_many
    end
  end
end
