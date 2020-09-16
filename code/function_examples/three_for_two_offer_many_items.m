function final_price = three_for_two_offer_many_items(list)

ordered_list = sort(list, 'descend');
third_elements = return_every_third_element(ordered_list);
total_sum = sum(list);
total_discount = sum(third_elements);
final_price = total_sum - total_discount;

end

