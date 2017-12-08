class Board

  def self.default_grid
    Array.new(9) { Array.new(9) }
  end

  def initialize(grid = self.class.default_grid)
    @grid = grid
  end

  def add_bombs_randomly
    10.times do
      pos = get_random_pos
      self[pos] = :b
    end
  end

  def get_random_pos
    [rand(@grid.length), rand(@grid.length)]
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @grid[row][col] = val
  end

  def render
    @grid.each do |row|
      p row
    end
  end


end
