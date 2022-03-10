require 'game.rb'

describe Game do
  let(:lats) { Player.new("Lats") }
  let(:cats) { Player.new("Cats") }

  before do
    @game = Game.new(lats, cats)
  end

  context 'attack' do
    
    it "attacks and damages player" do
      expect(cats).to receive(:receive_damage)
      @game.attack(damage: 10)
    end

    it "returns attack message" do
      expect(@game.attack_message).to eq "Lats attacked Cats!"
    end
    
    it "return turn message after attack" do
      expect(@game.turn_message).to eq "Lats, it's your turn to attack!"
    end 

  end 

  context 'players' do
    
    it 'should initialise with two players' do
      expect(@game.player1).to eq lats
      expect(@game.player2).to eq cats
    end

  end
  
end