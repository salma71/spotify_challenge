  #Question_1
  def sortByStrings(s, t)
    a = s.split('')
    b = t.split('')
    new_str = ''
    for ele in b do
        for char in a do 
            if char == ele
                new_str += char
            end
        end
    end
    return new_str
  end

sortByStrings('good', 'odg')
sortByStrings('weather', 'therapyw')
# "oodg"
# "theeraw"