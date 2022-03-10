require 'game.rb'

describe Game do
  let(:lats) { Player.new("Lats") }
  let(:cats) { Player.new("Cats") }

  before do
    @game = Game.new(lats, cats)
  end

  context 'hit points' do
    
    it "damages player" do
      expect(lats).to receive(:receive_damage)
      @game.attack(player: lats, damage: 10)
    end

  end 

  context 'players' do
    
    it 'should initialise with two players' do
      expect(@game.player1).to eq lats
      expect(@game.player2).to eq cats
    end

  end
end