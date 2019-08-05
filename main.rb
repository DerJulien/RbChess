require_relative "./lib/graphics.rb";
require_relative "./lib/pieces.rb";
require_relative "./lib/board.rb";

b = Board.new(8,8);

g = Graphics.new();
g.display_board(b);
