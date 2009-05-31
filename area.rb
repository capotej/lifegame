class Area
  attr_accessor :area
  attr_reader :size

  def initialize(size)
    @size = size
    @area = Array.new
    (0..size).each do
      @area << Array.new(size, '.') 
    end
  end

  def place(v, x, y)
    @area[x][y] = v
  end

  def draw
    @area.each do |a|
      a.each do |sub|
        print " #{sub}"
      end
      puts
    end
  end


end
