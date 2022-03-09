require 'game.rb'

describe Game do
  let(:lats) { Player.new("Lats") }
  let(:cats) { Player.new("Cats") }

  context 'hit points' do
    
    it "damages player" do
      expect(lats).to receive(:receive_damage)
      subject.attack(player: lats, damage: 10)
    end
  end 
end