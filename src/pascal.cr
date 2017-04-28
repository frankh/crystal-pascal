require "./pascal/*"
require "../lib/pascal"

if ARGV.size != 1
  puts "Usage: pascal <size>\n\t<size>\t\t\tSize of triangle to print (in rows)"
  exit 1
end

n = ARGV[0].to_i
Pascal.pascal(n).each { |row| puts row.join(' ') }
