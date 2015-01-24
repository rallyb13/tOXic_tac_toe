require('rspec')
require('player')

describe(Player) do

  describe("#mark") do
    it("lets player choose X or O") do
      test_player = Player.new({:xo => "X"})
      expect(test_player.mark()).to(eq("X"))
    end
  end
    
end
