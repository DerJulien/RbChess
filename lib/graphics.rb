$icons = {
  "Pawn" => "*", # ♙
  "Rook" => "+", # ♖
  "Knight" => "!", # ♘
  "Bishop" => "x", # ♗
  "Queen" => "U", # ♕
  "King" => "§", # ♔

  "Black" => "\u25A0", # ■
  "White" => " " #
}

class Graphics
  def display_board(b);
  system ("cls")

  board = b.get_map();
    board.each_with_index do |subarr,x|
      str = "";

      subarr.each_with_index do |value,y|
        str += "[" + $icons[value] + "]";
      end

      puts(str);
    end
  end
end
