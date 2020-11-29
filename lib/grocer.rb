require 'pry'

def find_item_by_name_in_collection(name, collection)
  cart = nil
  collection.each do |item|
      if item[:item] == name
        cart = item 
    end
  end
    cart
end

def consolidate_cart(cart)
 receipt = Array.new
  cart.each do |item|
    count = 0
    if !item[:count] 
      item[:count] = count
    end
    if item[:item]
      item[:count] += 1
    end
    if item[:count] > 0
      receipt << item
    end
  end
 receipt
end


  