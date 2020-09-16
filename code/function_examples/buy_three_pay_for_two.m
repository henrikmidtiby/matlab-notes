function total_price = buy_three_pay_for_two(a, b, c)

total_price = a + b + c - min([a, b, c]);

end