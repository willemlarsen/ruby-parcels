class Parcel
	def initialize(height, width, length, weight)
		@height = height
		@width = width
		@length = length
		@weight = weight
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
			"UNSHIPPABLE - TOO BIG"
		end
	end
end
