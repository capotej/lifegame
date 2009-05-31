require 'area'

class Bug

  def initialize(env, name)
    @name = name
    @env = env
    area = env.area
    
    x,y = rand(area.size),rand(area.size)
    
    env.place(name, x, y)
    @x, @y = x, y
  end

  def move(direction)
    @env.place('x', @x, @y)
    case direction
    when 'up'
      x = @x - 1
      y = @y
    when 'down'
      x = @x + 1
      y = @y
    when 'left'
      x = @x
      y = @y - 1
    when 'right'
      x = @x
      y = @y + 1
    end
    @env.place(@name, x, y)
    @x, @y = x,y
  end

end


enviro = Area.new(60)

thing = Bug.new(enviro, 'c')

moves = ['up', 'down', 'left', 'right']
100.times do
  thing.move('up')
end

enviro.draw

