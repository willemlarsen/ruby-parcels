require 'rspec'
require 'parcel.rb'

describe 'Parcel' do
	it 'creates new instance of the class Parcel' do
	test_parcel = Parcel.new
	expect(test_parcel).to be_an_instance_of Parcel
	end
end
