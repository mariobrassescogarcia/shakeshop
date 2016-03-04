#Exercise explanation:

#Create the shake shop class, containing:
# -An empty list where we can add milkshakes
# -A method to add milkshakes to this list
# -A method to checkout all of the milkshakes in our list
# -Hint: Model this class in the same way we created the milkshake class, and call the price_milkshake method to return a milkshakes total price when checking out.



#Create a Ticket variable that will contain the list of milkshakes and the total price

class Ticket
	def initialize
		@milkshakes = [ ]
		@price = 0
	end

#Create a function where we can add milkshakes to tickets
	def add_milkshake(milkshake)
		@milshakes.push(milkshake)
	end

#Create a function where we sum milkshakes' prices to get the total price
	def price_ticket
		#The count starts with the base price
		price_ticket = @price
		#Add each milkshake's price
		@milkshakes.each do |milkshake|
			price_ticket += milkshake.price
		end
		#Make the function return the price
		price_ticket
	end

end





class Milkshake
	attr_reader :ingredients, :price
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


marta_milkshake = Milkshake.new
avocado = Ingredient.new("avocado", 1)
spinach = Ingredient.new("spinach", 1)
apple = Ingredient.new("apple", 1)
marta_milkshake.add_ingredient(avocado)
marta_milkshake.add_ingredient(spinach)



#Add both milkshakes to the new ticket
ticket1 = Ticket.new
ticket1.add_milkshake(mario_milkshake)
ticket1.add_milkshake(marta_milkshake)

#Ask the Ticket class for the price value
ticket1.price_ticket



