require 'rails_helper'

RSpec.describe Trip, type: :model do
  before do
    @trip = Trip.new(name: 'Trip to the moon', description: 'Lorem ipsum')
  end

  describe 'Validations' do
    it "Can not have a start date in the past" do
      @trip.start_date = Date.yesterday
      expect(@trip).to_not be_valid
    end

    it "Can not have an end date before the start date" do
      @trip.start_date = Date.today
      @trip.end_date = Date.yesterday
      expect(@trip).to_not be_valid
    end
  end
  describe "Associations" do
    it "has and belongs to many users" do
      assc = described_class.reflect_on_association(:users)
      expect(assc.macro).to eq :has_and_belongs_to_many
    end
  end
end
