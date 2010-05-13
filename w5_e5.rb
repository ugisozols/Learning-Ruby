old_file_input = ARGV[0]
new_file_input = ARGV[1]

if old_file_input.nil? || new_file_input.nil? || !File.exists?(old_file_input) || !File.exists?(new_file_input)
  puts "usage: ruby #{__FILE__} old_inventory.txt new_inventory.txt"
  exit
end

old_file = File.open(old_file_input).readlines

File.open(new_file_input).readlines.each do |item|
  puts "+ #{item}" unless old_file.include?(item)
end

# OR ...

new_file = File.open(new_file_input).readlines

File.open(old_file_input).readlines.each do |line|
  new_file.delete(line)
end

new_file.each { |item| puts "+ #{item}" }
