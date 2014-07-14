class Parcel
	def initialize(height, width, length, weight)
		@height = height.to_i
		@width = width.to_i
		@length = length.to_i
		@weight = weight.to_i
	end
	def dimensions
		@height * @width * @length
	end
	def cost_to_ship
		if self.dimensions <= 10
			1 * @weight
		elsif self.dimensions <= 20
			2 * @weight
		else
			false
		end
	end
end
