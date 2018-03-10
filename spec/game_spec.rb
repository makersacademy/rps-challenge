require 'game'
describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#player_1' do
    it 'makes a first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'makes a second player' do
      expect(game.player_2).to eq player_2
    end
  end        	

  describe '#weapon(weapon)' do
    it 'throws an error if your choice is not in the array' do
      sword = double
      message = 'That weapon is not available!' 
      allow(sword).to receive(:weapon).and_raise message  
    end
    it 'lets you choose one weapon from the array' do
          allow_any_instance_of(Array).to receive(:scissors).and_return('scissors') 
      expect(subject.weapon(:scissors)).to eq :scissors
    end   
  end 

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq player_1
    end
  end

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end
  end
end