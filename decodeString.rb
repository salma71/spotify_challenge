#Question_2
def decodeString(s)
  new_str = ''
  integer_stack = []
  string_stack = []
    array_of_char = s.split("")
    #["4", "[", "a", "b", "]"]
    #[4, 0, 0, 0, 0]
		array_of_char.map do |char| 
			if char.to_i != 0
			integer_stack << char
			elsif char != ']'
			string_stack << char
			elsif char == ']' 
				str = ''
				count = 0
				count = integer_stack[-1].to_i
				integer_stack.pop()
				# return count
				while !(string_stack.empty?) && string_stack[-1] != '['
				str = string_stack[-1] + str
				string_stack.pop()
				end
				if !(string_stack.empty?) && string_stack[-1] == '['
				string_stack.pop()
				end
				# str = string_stack[-1] + str
				# return count.to_i
				str1 = str * count
				integer_stack.pop()
			# elsif char == '['
			return new_str = str1 + new_str * integer_stack[-2].to_i
			end
		end
	end

decodeString("4[ab]")
 # abababab
