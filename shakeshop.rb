

class Milkshake
	def initialize
		@ingredients = [ ]
		@price = 3
	end

	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
	end

	def price_milkshake
		#The count starts with the base price
		price_milkshake = @price
		#Add each ingredients price to an array
		@ingredients.each do |ingredient|
			price_milkshake += ingredient.price
		end

		#Make the function return the price of the milkshake
		price_milkshake

	end

	


end


class Ingredient
	attr_reader :name, :price
	def initialize(name, price)
		@name = name
		@price = price
	end
end




chocolate = Ingredient.new("chocolate", 1)



mario_milkshake = Milkshake.new
banana = Ingredient.new("banana", 2)
coco = Ingredient.new("coco", 3)
mario_milkshake.add_ingredient(banana)
mario_milkshake.add_ingredient(coco)
