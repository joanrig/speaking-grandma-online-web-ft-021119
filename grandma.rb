require 'pry'
# Write a speak_to_grandma method.

# Whatever you say to grandma, she should respond with
# HUH?! SPEAK UP, SONNY!
# unless you shout it (type in all capitals).

# If you shout, she can hear you (or at least she thinks so)
# and yells back

# NO, NOT SINCE 1938!

# However if you say 'I LOVE YOU GRANDMA!', she should respond with
# 'I LOVE YOU TOO PUMPKIN!'

# def speak_to_grandma(greeting)
#   if greeting == "I LOVE YOU GRANDMA!"
#     return "I LOVE YOU TOO PUMPKIN!"
#   elsif greeting == greeting.upcase
#     return "NO, NOT SINCE 1938!"
#   else
#     return "HUH?! SPEAK UP, SONNY!"
#   end
# end

def max_rot(n) #=> 1234
  list = [n.to_s.scan(/./)] #=> ["1", "2", "3", "4"]
  binding.pry
  i = 0
  until i = (list.length-1)
    #binding.pry
    list<< ([list[i].shift(i)] + list[i].rotate)
    i+= 1
  end

  list.each do |array|
    array.join.to_i
  end
  list.flatten.sort.last
end
