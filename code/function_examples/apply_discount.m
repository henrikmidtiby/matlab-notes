function actual_price = apply_discount(ordinary_price)

if(ordinary_price >= 600)
    actual_price = 0.9*ordinary_price;
else
    actual_price = ordinary_price;
end

end

