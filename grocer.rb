require 'pry'
# binding.pry

def find_item_by_name_in_collection(name, collection)
  index =  0 
  item_hash = {}
  while index < collection.length do 
    if name == collection[index][:item]
      return collection[index]
    end
      index += 1 
  end
end

def consolidate_cart(cart)
  index = 0 
  new_cart = []
  while index < cart.length do 
    new_cart_item = find_item_by_name_in_collection(cart[index][:item], new_cart)
    if new_cart_item    #!= nil 
      new_cart_item[:count] += 1 
    else
      new_cart_item = find_item_by_name_in_collection(cart[index][:item], cart)
      new_cart_item[:count] = 1 
      new_cart << new_cart_item
    end
    index += 1 
  end
  new_cart 
end

def apply_coupons(cart, coupons)
  index = 0 
  while index < counpons.length do
    cart_item = find_item_by_name_in_collection(coupons[index][:item])
    counter += 1 
  end
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
