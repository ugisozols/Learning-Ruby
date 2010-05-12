class TextFilter
  def initialize
    @bye = 0
  end

  def bye_counter(user_input)
    user_input.eql?("BYE") ? @bye += 1 : @bye = 0
  end
end

filter = TextFilter.new

while user_input = gets.chomp do
  exit if filter.bye_counter(user_input) == 3
  puts user_input.eql?(user_input.upcase) ? "NO, NOT SINCE #{1930 + rand(21)}!" : "HUH?! SPEAK UP, SONNY!"
end
