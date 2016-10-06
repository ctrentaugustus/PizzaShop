my_inventory = {
	"cheese" => 25,
	"pepperoni" => 16
}
#=> show_inventory(my_inventtory)

def show_inventory(inventory)
	puts inventory
end
#=> add_pizza(my_inventory, "cheese")
#=> add_pizza(my_inventory, "meatlovers")
#=> show_inventory(my_inventory)
def add_pizza(inventory, pizza)
	if inventory.has_key?(pizza) == true
		puts "This pizza already exists!"
	else
		inventory[pizza] = 0
	end
end
#=> remove_pizza(my_inventory, "cheese")
#=> remove_pizza(my_inventory, "mushroom")
#=> show_inventory(my_inventory)

def remove_pizza(inventory, pizza)		
	if inventory.has_ky?(pizza)
		inventory.delete(pizza)
	else
		puts "This pizza doesn't exist"	
	end
end

def buy_pizza(inventory, pizza,  stock)
	if inventory.has_key?(pizza) == true
		inventory[pizza] += stock
	else
		puts "We don't make that pizza here!"
	end
end

def sell_pizza(inventory, pizza, stock)		
	if inventory.has_key?(pizza) == true
		if stock > inventory[pizza]
	else 
		inventory[pizza] -= stock
	end
end

while true
	puts "Welcome to Lee's pizza, Boss!"
	puts "Here is your menu"
	puts "1. Check inventory"
	puts "2. add a new pizza to our inventory"
	puts "3. Remove a pizza from our inventory"
	puts "4. Buy more of a certain type of Pizza"
	puts "5. Sell more of a certain type of Pizza"
	puts "6. Go home for the day"

	choice = gets.chomp
		case choice
		when "1"
			show_inventory(my_inventory)
		when "2"
			puts "What kind of pizza would you like to add"
			new_pizza = gets.chomp
			add_pizza(my_inventory, new_pizza)	
		when "3"
			puts "What pizza would you like to remove?"
			existing_pizza = gets.chomp
			remove_pizza(my_inventory, existing_pizza)
		when "4"
			puts "What pizza would you like to buy more of?"
			more_pizza = gets.chomp
			puts "How many would you like to buy?"
			amount = gets.chomp.to_i
			sell_pizza(my_inventory, gone_pizza, amount)
		when "5"
			puts "Whate pizza would you like to sell more?"
			gone_pizza = gets.chomp
			puts "How many would you like to sell"
			amount = gets.chomp.to_i
		when "6"
			break
	end
end
					










