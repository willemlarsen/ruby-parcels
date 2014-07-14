require './lib/parcel.rb'

def greeting
	puts "\n\nHello! You can enter the dimensions\n" +
	 "and weight of a parcel here to determine shipping cost.\n\n"
end

def initialize_parcel_height
	puts "Please enter the height in inches of the parcel"
	@input_height = gets.chomp
	puts "Your package is #{@input_height} inches tall.\n\n"
end

def initialize_parcel_width
	puts "Please enter the width in inches of the parcel"
	@input_width = gets.chomp
	puts "Your package is #{@input_width} inches wide.\n\n"
end

def initialize_parcel_length
	puts "Pleae enter the length in inches of the parcel"
	@input_length = gets.chomp
	puts "Your package is #{@input_length} inches long.\n\n"
end

def initialize_parcel_weight
	puts "Pleae enter the weight in pounds of the parcel"
	@input_weight = gets.chomp
	puts "Your package weighs #{@input_weight} pound(s).\n\n"
end

def tell_user_shipping_cost
	newParcel = Parcel.new(@input_height, @input_width, @input_length, @input_weight)
	 if newParcel.cost_to_ship
	 	puts "Your parcel will cost #{newParcel.cost_to_ship} dollars to ship."
	 	exit
	 else
 		puts "UNSHIPPABLE - YOU HAVE BEEN REJECTED"
 		exit
	 end
end

greeting
initialize_parcel_height
initialize_parcel_width
initialize_parcel_length
initialize_parcel_weight
tell_user_shipping_cost



