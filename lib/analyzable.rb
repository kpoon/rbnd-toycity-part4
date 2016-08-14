module Analyzable
 
	# average_price should accept an array of Product objects and return the 
	# average price. (To find the average price: add up the 
	# prices and divide by the number of prices you added together.)
	# Analyzable::average_price(Product.all)
	#=> 51.44
	def average_price(products_array)
		total_price = 0
		products_array.each do |record|  
	  		total_price += record.price.to_f
		end 
		
		avg_price = (total_price / products_array.length).round(2)
		return avg_price
	end

	# print_report should accept an array of Product objects and return a 
	# summary inventory report containing: average 
	# price, counts by brand, and counts by product name.
	# Analyzable::print_report(Product.all)
	# #=> Average Price: $51.6
	# Inventory by Brand:
	#   - Hasbro: 5
	#   - Fisher-Price: 1
	#   - Crayola: 2
	#   - Lego: 2
	# Inventory by Name:
	#   - Incredible Copper Bag: 3
	#   - Synergistic Rubber Car: 2
	#   - Aerodynamic Marble Computer: 3
	#   - Synergistic Wooden Chair: 2
	def print_report(products_array)
		report_string = ""
		report_string += "Average Price: $#{average_price(products_array)} \n"
		report_string += "Inventory by Brand: \n"
		
		brand_section = count_by_brand(products_array)
		brand_section.each do |key, value|  
	  		report_string += "   - #{key}: #{value} \n"
		end 

		report_string += "Inventory by Name: \n"
		name_section = count_by_name(products_array)
		name_section.each do |key, value|  
	  		report_string += "   - #{key}: #{value} \n"
		end 

		puts report_string
		return report_string
	end

	# count_by_brand should accept an array of Product objects 
	# and return a hash with inventory counts, organized by brand.
	# Analyzable::count_by_brand(Product.all)
	# #=> {"Lego"=>3, "Fisher-Price"=>2, "Nintendo"=>1, "Crayola"=>2, "Hasbro"=>2}
	def count_by_brand(products_array)
		brand_count = Hash.new
    	products_array.each do |record|
      		if brand_count.has_key?(record.brand) 
        		brand_count[record.brand] += 1
      		else
        		brand_count[record.brand] = 1
      		end
    	end
    	return brand_count
	end

	# count_by_name should accept an array of Product 
	# objects and return a hash with inventory counts, organized by product name.
	# Analyzable::count_by_name(Product.all)
	# #=> {"Sleek Linen Watch"=>2, 
	# "Heavy Duty Iron Bottle"=>5, 
	# "Lightweight Paper Table"=>1, 
	# "Heavy Duty Wool Shirt"=>1, 
	# "Enormous Paper Computer"=>1}
	def count_by_name(products_array)
		name_count = Hash.new
    	products_array.each do |record|
      		if name_count.has_key?(record.name) 
        		name_count[record.name] += 1
      		else
        		name_count[record.name] = 1
      		end
    	end
    	return name_count
	end
end
