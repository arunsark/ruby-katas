require 'matrix'

class Rover

  attr_accessor :position

  def initialize(position:[0,0], direction:'N', grid_size: [10,10])
    @position = position
    @direction = str_to_vec(direction)
    @grid_size = grid_size
  end

  def str_to_vec(str)
    case str
    when 'N' then [0,1]
    when 'S' then [0,-1]
    when 'E' then [1,0]
    when 'W' then [-1,0]
    end
  end

  def direction
    return case @direction
           when [0,1] then 'N'
           when [0,-1] then 'S'
           when [1,0] then 'E'
           when [-1,0] then 'W'
           end
  end

  def make_move(type: 'f')
    pos_vec = Vector.elements(@position)
    dir_vec = Vector.elements(@direction)
    case type
    when 'f' then @position = Array(pos_vec + dir_vec)
    when 'b' then @position = Array(pos_vec - dir_vec)
    when 'l' then @direction = [dir_vec[1], dir_vec[0]]
    when 'r' then @direction = [dir_vec[1], -dir_vec[0]]
    end
    if @position[0] >= @grid_size[0] then @position[0] = 0 end
    if @position[0] < 0 then @position[0] = @grid_size[0] - 1 end
    if @position[1] >= @grid_size[1] then @position[1] = 0 end
    if @position[1] < 0 then @position[1] = @grid_size[1] - 1 end
  end
end
