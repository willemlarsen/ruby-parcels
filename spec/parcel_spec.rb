require 'rspec'
require 'parcel.rb'

describe 'Parcel' do
	it 'creates new instance of the class Parcel' do
	test_parcel = Parcel.new(1, 1, 1, 1)
	expect(test_parcel).to be_an_instance_of Parcel
	end
	it 'specifies a set of dimensions' do
		test_parcel = Parcel.new(4, 5, 1, 1)
		expect(test_parcel.dimensions).to eq(20)
	end
	it 'calculates shipping cost based on weight and dimensions' do
		test_parcel = Parcel.new(4, 5, 1, 2)
		expect(test_parcel.cost_to_ship).to eq(4)
	end
end
