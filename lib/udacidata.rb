require_relative 'find_by'
require_relative 'errors'
require 'csv'

class Udacidata
	# include UdacidataErrors
	# raise UdacidataErrors::ProductNotFoundError

#   Product.all should return an array of Product objects representing all 
#   the data in the database.
#   Product.all
# #=> [#<Product:0x007fe4853e06e0 @id=0, @brand="Lego", @name="Sleek Wool Bottle", @price="81.87">, 
# #<Product:0x007fe4853e0640 @id=1, @brand="Hasbro", @name="Sleek Wool Bottle", @price="81.54">, 
# #<Product:0x007fe4853e05a0 @id=2, @brand="Crayola", @name="Durable Concrete Bag", @price="45.35">, 
# ...]
  def all
  end

def self.create(attributes = nil)
  # If the object's data is already in the database
  # create the object
  # return the object

  # If the object's data is not in the database
  # create the object
  # save the data in the database
  # return the object

  # Product.create should create an instance of the object and save the data to 
  # the database. It will return the Product object it created.
  # Product.create(brand: "Udacity", name: "yoyo", price: 5.00)
  # #=> #<Product:0x007f8b5a99aee8>

#   The attributes represent an object that already exists in the database. Pass the attributes into 
#   new, and return the created object.

# The attributes passed in represent an object that does not yet exist in the database. Pass 
# the attributes into new and save the object data to the database.
end 



  # Product.first should return a Product object that represents the 
  # first product in the database.
  # Product.first
  #=> #<Product:0x007fdf90ba9e20>
  def first
  end

# Product.first(n) will return an array of Product objects for the 
# first n products in the database.
# Product.first(2)
#=> [#<Product:0x007f8a91a2c9c0 @id=0, @brand="Fisher-Price", @name="Gorgeous Plastic Bag", @price="44.99">, 
#<Product:0x007f8a91a2c920 @id=1, @brand="Nintendo", @name="Lightweight Iron Clock", @price="37.36">]
  def first(n)
  end



  # Product.last should return a Product object that represents the last 
  # product in the database. 
  # Product.last
  # #=> #<Product:0x007f807da70508>
  def last
  end

#   Product.last(n) will return an array of Product objects for the last n 
#   products in the database.
#   Product.last(2)
#   #=> [#<Product:0x007f93cb2e8798 @id=98, @brand="Nintendo", @name="Fantastic Aluminum Shoes", @price="43.05">, 
# #<Product:0x007f93cb2e86f8 @id=99, @brand="Crayola", @name="Awesome Leather Chair", @price="24.73">]
  def last(n)
  end

# Product.destroy should delete the product corresponding to the given id from 
# the database, and return a Product object for the product that was deleted.
# # Remove the product with id 7 from the database
# Product.destroy(7)
# #=> #<Product:0x007f8a421a0d50>
	def destroy
	end

# product_instance.update should change the information for a given Product 
# object, and save the new data to the database.
# # Get product with id 5, change its brand to "Udacity"
# Product.find(5).update(brand: "Udacity")
# #=> #<Product:0x007fbff1a44558>
    def update
    end

# Product.find should return a Product object for the product with 
# a given product id.
# Product.find(1) 
# #=> #<Product:0x007fdd029987c0>
# raise ProductNotFoundError
# when the product ID can’t be found
def find(n)
end

# The methods Product.find_by_brand and Product.find_by_name should return a Product 
# object for the first product in the database that has a matching brand or 
# product name. Note: Use metaprogramming techniques to define these methods. 
# There are hints to help you get started in find_by.rb.
# Product.find_by_brand("Lego")
# #=> #<Product:0x007f97e218cd70>
def find_by_brand()
end

# Product.find_by_name("Awesome Toy")
# #=> #<Product:0x007f97e21790b8>
# Note: Use metaprogramming techniques to define these methods. 
# There are hints to help you get started in find_by.rb.
	def find_by_name()
	end

# Product.where should return an array of Product objects that match a given 
# brand or product name.
# Product.where(brand: "Lego") 
# #=> [#<Product:0x007fa16227c300 @id=5, @brand="Lego", @name="Sleek Plastic Keyboard", @price="22.28">, 
# #<Product:0x007fa16227c260 @id=6, @brand="Lego", @name="Rustic Paper Hat", @price="85.26">]
	def where
	end


# raise ProductNotFoundError
# when the product can’t be destroyed because the given ID does not exist
# should delete the product corresponding to the given id from the database, and 
# return a Product object for the product that was deleted.
# # Remove the product with id 7 from the database
# Product.destroy(7)
# #=> #<Product:0x007f8a421a0d50>
	def destroy(n)
	end

# product_instance.update should change the information for a given Product 
# object, and save the new data to the database.
# # Get product with id 5, change its brand to "Udacity"
# Product.find(5).update(brand: "Udacity")
# #=> #<Product:0x007fbff1a44558>
	def product_instance.update
	end
end
