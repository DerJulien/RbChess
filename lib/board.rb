class Board

  def initialize(sx,sy) # -> size x(y) starts : 1
      @grid_field = Array.new(sx) { Array.new(sy,nil) }
      alternate();
      populate();
  end

  def alternate()
      cell = 0; sx = @grid_field.length; sy = @grid_field[0].length;
      index = -1; (sx * sy).times do
      index += 1;

        if (index > 0 && !((index % sx) > 0)) then
          cell += 1;
        end
        value = (((index+cell) % 2) > 0 ? "Black" : "White");

        x = index % sx; y = cell;
        @grid_field[x][y] = value;
    end
  end

  def populate()
    i = -1; 8.times { i += 1; @grid_field[1][i] = "Pawn"; }
    i = -1; 8.times { i += 1; @grid_field[6][i] = "Pawn"; }

    @grid_field[0][0] = "Rook"; @grid_field[0][7] = "Rook";
    @grid_field[7][0] = "Rook"; @grid_field[7][7] = "Rook";

    @grid_field[0][1] = "Knight"; @grid_field[0][6] = "Knight";
    @grid_field[7][1] = "Knight"; @grid_field[7][6] = "Knight";

    @grid_field[0][2] = "Bishop"; @grid_field[0][5] = "Bishop";
    @grid_field[7][2] = "Bishop"; @grid_field[7][5] = "Bishop";

    @grid_field[0][3] = "King"; @grid_field[0][4] = "Queen";
    @grid_field[7][3] = "King"; @grid_field[7][4] = "Queen";
  end

  def get_map()
      return @grid_field;
  end

end
