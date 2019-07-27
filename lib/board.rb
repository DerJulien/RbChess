class Board
  def initialize(sx=8,sy=8) # -> size x(y) starts : 1
      @grid_field = Array.new(sx) { Array.new(sy,false) }
      cell = 0;
      index = -1; (sx * sy).times do

        index += 1;
        if (index > 0 && !((index % sx) > 0)) then
          cell += 1;
        end
          value = (((index+cell) % 2) > 0 ? false : true);
          x = index % sx; y = cell;

        @grid_field[x][y] = value;
      end
  end
  def draw(g)
    g.display_board(@grid_field);
  end
end
