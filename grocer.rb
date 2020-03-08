require "pry"

def find_item_by_name_in_collection(name, collection)
  output = nil
  collection.each do |key|
    if name == key[:item]
      output = key
    end
  end
  return output
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart = []
  cart.each do |k,v|
    binding.pry
    new_item = find_item_by_name_in_collection(cart[:item], new_cart)
    if new_item != nil
      new_item[:count] += 1
    else
      new_item = {
        :item => cart[:item],
        :price => cart[:price],
        :clearance => cart[:clearance],
        :count => 1
      }
      new_cart << new_item
  end
end
puts new_cart
  new_cart
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
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
