def find_item_by_name_in_collection(name, collection)
  found = nil
  collection.each do |element|
    if name == element[:item]
      found = element
    end
  end
  found
end

def consolidate_cart(cart)
  new_cart = []
  cart.each do |unscanned_item|
    duplicate = false
    new_cart.each do |scanned_item|
      if unscanned_item[:item] == scanned_item[:item]
        scanned_item[:count] += 1
        duplicate = true
      end
    end
    if !duplicate
      new_cart << unscanned_item
      new_cart.last[:count] = 1
    end
  end
  new_cart
end