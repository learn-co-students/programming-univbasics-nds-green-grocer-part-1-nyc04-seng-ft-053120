def find_item_by_name_in_collection(name, collection)
  collection.each do |items|
    if items[:item]==name
      return items
    end
  end
  nil
end

def consolidate_cart(cart)
  new_cart=[]
  cart.map do |cart_items|
        if find_item_by_name_in_collection(cart_items[:item], new_cart)
          i=0
          while(i<new_cart.length) do
            if(new_cart[i][:item]==cart_items[:item])
              new_cart[i][:count]+=1
            end
            i+=1
          end
        else
          new_cart.push(cart_items)
          new_cart[new_cart.length-1][:count]=1
        end
    end
  new_cart
end






  