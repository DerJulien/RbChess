require_relative "./graphics.rb";

class Piece
  def initialize()
    @pid = self.class.name;
    @x = -1;
    @y = -1;
  end

  def draw(g)
    g.display(@pid,@x,@y);
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
