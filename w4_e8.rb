input_file = ARGV[0]

if input_file.nil? || !File.exists?(input_file)
  puts "can't find specified file..."
  puts "usage: ruby #{__FILE__} filename"
  exit
end

char_count_with_whitespace = 0
char_count_without_whitespace = 0
line_count = 0
word_count = 0
sentence_count = 0
paragraph_count = 1

File.open(input_file).readlines.each do |line|
  line_count += 1
  char_count_with_whitespace += line.length
  word_count += line.split.length
  char_count_without_whitespace += line.gsub(/\s+/, "").scan(/./).length
  sentence_count += line.scan(/\.|\!|\?/).length
  paragraph_count += 1 if line == "\n"
end

avg_words_per_sentence =  word_count / sentence_count.to_f
avg_sentences_per_paragraph = sentence_count / paragraph_count.to_f

puts "1. Character count: #{char_count_with_whitespace}"
puts "2. Character count (excluding spaces): #{char_count_without_whitespace}"
puts "3. Line count: #{line_count}"
puts "4. Word count: #{word_count}"
puts "5. Sentence count: #{sentence_count}"
puts "6. Paragraph count: #{paragraph_count}"
puts "7. Average number of words per sentence #{"%.1f" % avg_words_per_sentence}"
puts "8. Average number of sentences per paragraph #{"%.1f" % avg_sentences_per_paragraph}"
