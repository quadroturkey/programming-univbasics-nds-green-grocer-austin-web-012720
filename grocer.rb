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
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  index = 0 
  new_cart = []
  while index < cart.length do 
    new_cart_item = find_item_by_name_in_collection(cart[index][:item], new_cart)
    
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart

  index = 0 
  while index < cart.length do
    coup_name = coupons[0][:item]
    disc_value = coupons[0][:cost] / coupons[0][:num]
    item_name = cart[index][:item]
    if item_name == coup_name
      if cart[index][:count] % coupons[0][:num] === 0 
        cart[index][:item] = item_name + " W/COUPON"
        cart[index][:price] = disc_value
      end
    end
    index += 1 
  end
#binding.pry
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
