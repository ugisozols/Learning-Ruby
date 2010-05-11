1.upto(100) do |num|
  num = "FizzBuzz" if num % 3 == 0 && num % 5 == 0
  num = "Fizz" if num % 3 == 0
  num = "Buzz" if num % 5 == 0
  puts num
end
