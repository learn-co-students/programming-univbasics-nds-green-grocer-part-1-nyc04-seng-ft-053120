
def find_item_by_name_in_collection(name, collection)
  answer=nil
  count=0
  while count<collection.length do
    if collection[count][:item].eql?(name)
      answer=collection[count]
    end
    count+=1
  end
  answer
end

def consolidate_cart(cart)
  answer=[]
  total_item=[]
  count=0
  while count<cart.length do
    total_item<<cart[count][:item]
    count+=1
  end
  uniq_item=total_item.uniq
  count=0
  while count<uniq_item.length do
    answer<<find_item_by_name_in_collection(uniq_item[count],cart)
    answer[count][:count]=total_item.count(uniq_item[count])
    count+=1
  end
  answer
end
