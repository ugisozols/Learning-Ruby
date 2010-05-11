quiz = [0,0,0,1,0,0,1,1,0,1]

puts "#{quiz.length - quiz.inject(:+)} out of #{quiz.length}"
puts "#{quiz.count(0)} out of #{quiz.length}"