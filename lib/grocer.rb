require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.find_index do |key|
    if key[:item] == name
      return key
    end 
  end 
end


# Consult README for inputs and outputs
#
# REMEMBER: This returns a new Array that represents the cart. Don't merely
# change `cart` (i.e. mutate) it. It's easier to return a new thing.

def consolidate_cart(cart)
  new_arr = []
  i = 0 
  
  while i < cart.length do 
    new_item = find_item_by_name_in_collection(cart[i][:item], new_arr)
      if new_item
        new_item[:count] += 1 
      else
        cart[i][:count] = 1 
        new_arr << cart[i]
      end
      i += 1 
    end
    new_arr
end 



  