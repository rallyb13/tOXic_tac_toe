require('rspec')
require('player')
require('space')

describe(Space) do

  describe("#x_coordinate") do
    it("returns the space's x_coordinate") do
      test_space = Space.new({:x => 2, :y => 1})
      expect(test_space.x_coordinate()).to(eq(2))
    end
  end

  describe("#y_coordinate") do
    it("returns the space's y_coordinate") do
      test_space = Space.new({ :x => 1, :y => 2})
      expect(test_space.y_coordinate()).to(eq(2))
    end
  end

  describe(".all") do
    it("returns all spaces -- begins empty") do
      expect(Space.all()).to(eq([]))
    end
  end

  describe("#create") do
    it("creates a space on the board") do
      test_space = Space.new({:x => 3, :y => 3})
      test_space.create()
      expect(Space.all()).to(eq([test_space]))
    end
  end


end






# define_method(:store_move) do |player| #is this a reliable save method?
#   if player == player1
#     @@player1moves.push(self)
#   else
#     @@player2moves.push(self)
#   end
# end
