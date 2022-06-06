class Matrix
  attr_reader :rows
  attr_reader :columns
  def initialize(matrix)
    @rows = matrix.split("\n").map do |row|
      row.split.map(&:to_i)
    end
    @columns = (0..@rows[0].length - 1).collect do |col_ind|
      @rows.collect { |row| row[col_ind] }
    end
  end
  def saddle_points
    res = []
    rows.each_with_index do |row, i|
      columns.each_with_index do |col, j|
        res << [i, j] if row[j] == row.max && rows[i][j] == col.min
      end
    end
    res
  end
end