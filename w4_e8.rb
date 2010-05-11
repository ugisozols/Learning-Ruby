input_file = ARGV[0]

begin
  char_count_with_whitespace = 0
  char_count_without_whitespace = 0
  line_count = 0
  word_count = 0

  file = File.open(input_file, "r")
  all_lines = file.readlines
  file.close

  all_lines.each do |line|
    line_count += 1
    char_count_with_whitespace += line.length
    word_count += line.split.length
    char_count_without_whitespace += line.gsub(" ", "").scan(/./).length
  end

  sentence_count = all_lines.join.split(/\.|\!|\?/).length
  paragraph_count = all_lines.join.split("\n\n").length
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
rescue TypeError => error
  puts error
rescue Errno::ENOENT => error
  puts error
end
