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
