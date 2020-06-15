require "pry"

def find_item_by_name_in_collection(name, collection)
  item = nil
  
  collection.each { |store_item|
    store_item.each_value { |value|
      if value == name
        item = store_item
      end
    } 
  }

item
end

# return array of hashes for each item with a quantity
def consolidate_cart(cart)
  receipt = []

  cart.each { |item|
    item[:count] = 1
    if !find_item_by_name_in_collection(item[:item], receipt)
      receipt << item
    else
      item[:count] += 1
    end
  }
receipt
end

collection = grocery_shelf = [
  { :item => "CANNED BEANS", :price => 3.00, :clearance => true },
  { :item => "CANNED CORN", :price => 2.50, :clearance => false },
  { :item => "SALSA", :price => 1.50, :clearance => false },
  { :item => "TORTILLAS", :price => 2.00, :clearance => false },
  { :item => "HOT SAUCE", :price => 1.75, :clearance => false }
]

consolidate_cart(collection)
  

# item.each_value { |value|
# if value.!find_item_by_name_in_collection(value, receipt)
#   item[:count] = 1
#   receipt << item
# else
#   item[:count] += 1
#   puts receipt
# end