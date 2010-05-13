class TextFilter
  def initialize
    @bye = 0
  end

  def bye_counter(user_input)
    user_input.eql?("BYE") ? @bye += 1 : @bye = 0
  end
end

filter = TextFilter.new

puts "* You entered chat room..."
puts "Granny: sup?"

until filter.bye_counter(user_input = gets.chomp) == 3 do
  puts "Granny: " << (user_input.eql?(user_input.upcase) ? "NO, NOT SINCE #{1930 + rand(21)}!" : "HUH?! SPEAK UP, SONNY!")
end

puts "* Granny has left chat room..."
