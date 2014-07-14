class Parcel
	def initialize(height, width, length, weight)
		@height = height
		@width = width
		@length = length
		@weight = weight
	end
	def dimensions
		@height.to_i * @width.to_i * @length.to_i
	end
	def cost_to_ship
		if self.dimensions <= 10
			1 * @weight.to_i
		elsif self.dimensions <= 20
			2 * @weight.to_i
		else
			false
		end
	end
end
