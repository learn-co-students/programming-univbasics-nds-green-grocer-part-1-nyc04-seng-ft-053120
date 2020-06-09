require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |grocery|
    return grocery if grocery[:item] === name 
  end
  nil
end


def consolidate_cart(cart)
  index = 0 
  checkout_cart = []

  while index < cart.length do
    item = find_item_by_name_in_collection(cart[index][:item], checkout_cart)
    if item
      checkout_index = 0
      while checkout_index < checkout_cart.length do 
        if item[:item] == checkout_cart[checkout_index][:item]
          checkout_cart[checkout_index][:count] += 1
        end
        checkout_index += 1
      end
    else
      cart[index][:count] = 1
      checkout_cart.push(cart[index])
    end
    index += 1
  end
  checkout_cart
 end