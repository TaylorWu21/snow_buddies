require 'rails_helper'

RSpec.describe Trip, type: :model do
  describe 'attributes' do

  	it { should respond_to :title}
  	it { should respond_to :date}
  	it { should respond_to :description}
  	it { should respond_to :location }
  end

  describe 'class methods' do
  	before(:each) do
  		@trip1 = Trip.create(location: 'Anywhere', title: 'Euro', date: '05/04/2017', description: 'Eagerly Waiting')
  		@trip2 = Trip.create(location: 'Somewhere', title: 'India', date: '12/02/2020', description: 'Winter is the best season for this trip')
  		@trip3 = Trip.create(location: 'Everywhere', title: 'Newyork', date: '08/07/2016', description: 'A fun Trip')
  	end

  	it 'sorts by title' do
  		trips = Trip.by_title
  		expect(trips).to eq([@trip1, @trip2, @trip3])
  	end

  	it 'sorts by date' do
  		trips = Trip.by_date
  		expect(trips).to eq([@trip1, @trip3, @trip2])
  	end

  	it 'sorts by description' do
  		trips = Trip.by_description
  		expect(trips).to eq([@trip3, @trip1, @trip2])
  	end
  end
end