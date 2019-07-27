icons = {
  "Pawn" => "o",
  "Rook" => "+",
  "Knight" => "!",
  "Bishop" => "^",
  "Queen" => "*",
  "King" => "x",

  "black" => "#",
  "white" => " "
}

class Graphics
  def display(id,x,y)
    td = icons[id];

  end
  def display_board(board);
  end
end
