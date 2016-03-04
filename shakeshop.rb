
#Create milkshake class

class Milkshake
	def initialize(flavor, price)
		@flavor = [ ]
		@price = 3
	end
end


class Ingredient
	def initialize(name, price)
		@name = name
		@price = price
	end
end



banana = Ingredient.new("banana", 2)
coco = Ingredient.new("coco", 3)
chocolate = Ingredient.new("chocolate", 1)
