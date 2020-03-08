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
  cart.each do |key|
    new_item = find_item_by_name_in_collection(key[:item], new_cart)
    if new_item != nil
      new_item[:count] += 1
    else
      new_item = {
        :item => key[:item],
        :price => key[:price],
        :clearance => key[:clearance],
        :count => 1
      }
      new_cart << new_item
  end
end
  new_cart
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  counter = 0
  while counter < coupons.length
    item = find_item_by_name_in_collection(key[:item], cart)
    puts item
    coupon_item = "#{key[:item]} W/COUPON"
    item_with_coupon = find_item_by_name_in_collection(coupon_item, cart)
    if item && item[:count] >= key[:num]
      item_with_coupon[:count] += key[:num]
      item[:count] -= key[:num]
    else
      item_with_coupon = {
        :item => coupon_item,
        :price => key[:cost] / key[:num],
        :count => key[:num],
        :clearance => item[:clearance]
      }
      cart << item_with_coupon
      item[:count] -= key[:num]
  end
end
counter +=1
endcart
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
