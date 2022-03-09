require 'player.rb'

describe Player do
  context "name" do
    it "returns name" do 
      player = Player.new("Lats")
      expect(player.name).to eq "Lats"
    end 
  end 
end