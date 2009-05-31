require 'area'

class Bug

  def initialize(env, name)
    @name = name
    @env = env
    area = env.area
    x,y = rand(area.size),rand(area.size)
    env.place(1, x, y)
    @x = x
    @y = y
  end

  def move(direction)
    @env.place(',', @x, @y)
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


enviro = Area.new(10)

thing = Bug.new(enviro, 'x')

moves = ['up', 'down', 'left', 'right']
#5.times do
#  thing.move(moves[rand(3)])
#  enviro.draw
#  puts "---------------"
#end

thing.move('up')
thing.move('up')
enviro.draw

