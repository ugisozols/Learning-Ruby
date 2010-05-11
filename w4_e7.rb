STDOUT.flush
until (input = gets.chomp).eql?("BYE") do
  puts input.eql?(input.upcase) ? "NO, NOT SINCE #{1930 + rand(21)}!" : "HUH?! SPEAK UP, SONNY!"
end
