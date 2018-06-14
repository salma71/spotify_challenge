#Question_3
def changePossibilities(amount, denominations, index=0)

  if amount == 0
	 return 1
	elsif amount < 0
	 return 0
	elsif index == denominations.length
	 return 0
	end
	current_coin = denominations[index]
  num_possibilities = 0
  while amount >= 0
    num_possibilities += changePossibilities(amount, denominations, index + 1)
    amount -= current_coin
  end
  return num_possibilities
end
changePossibilities(4, [1,2,3], index=0)

# 4