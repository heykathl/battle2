require 'player.rb'

describe Player do

  let(:lats) { Player.new("Lats") }
  let(:cats) { Player.new("Cats") }

  context "name" do

    it "returns name" do 
      expect(lats.name).to eq "Lats"
    end 

  end 

  context 'hit points' do

    it 'has a default HP value' do
      expect(lats.hp).to eq Player::DEFAULT_HP
    end
    
    it 'reduces a players hit points when attacked' do
      expect { lats.attacks(player: cats, with_damage: 10) }.to change { cats.hp }.by -10
    end

  end
end