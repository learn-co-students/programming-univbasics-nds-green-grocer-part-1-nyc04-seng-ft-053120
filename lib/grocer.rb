#finds item by name, and returns hash with its info
def find_item_by_name_in_collection(name, collection)
  collection.find {|elem| elem[:item] == name}
end
#returns a new array that contains a count of each item 
def consolidate_cart(cart)
  receipt_array = []
  cart.each do | elem |
    if !find_item_by_name_in_collection(elem[:item], receipt_array)
      receipt_array << elem
      receipt_array[receipt_array.length-1][:count] = 1
    else 
      receipt_array.find { |element| element[:count] += 1 }
    end
  end 
    receipt_array 
end