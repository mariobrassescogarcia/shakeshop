

class Milkshake
	def initialize
		@ingredients = [ ]
		@price = 3
	end

	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
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
