1.upto(100) do |num|
  str = ""
  str << "Fizz" if num % 3 == 0
  str << "Buzz" if num % 5 == 0
  puts str.empty? ? num : str
end
