require "./pascal/*"

module Pascal
  extend self

  def next_row(row)
    ([0] + row).zip(row + [0]).map { |a, b| a + b }
  end

  def pascal(n)
    rows = [] of Array(Int32)
    row = [1] of Int32
    n.times do
      rows << row
      row = next_row(row)
    end
    rows
  end
end

if ARGV.size != 1
  puts "Usage: pascal <size>\n\t<size>\t\t\tSize of triangle to print (in rows)"
  exit 1
end

n = ARGV[0].to_i
Pascal.pascal(n).each { |row| puts row.join(' ') }
