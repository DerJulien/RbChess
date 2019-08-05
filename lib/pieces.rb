class Piece

  def initialize()
    @pid = self.class.name;
    @x = -1;
    @y = -1;
  end

end

class Pawn < Piece

end

class Rook < Piece

end

class Knight < Piece

end

class Bishop < Piece

end

class Queen < Piece

end

class King < Piece

end
