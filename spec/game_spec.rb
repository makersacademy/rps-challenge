require 'game'

describe Game do
  subject(:game) { described_class.new(session) }
  let(:session) { { "player_1_name" => "Peter", "user_choice" => "Rock", "comp_choice" => "Scissors" } }

  describe '#player_1_name' do
    it 'returns entered name' do
      expect(game.player_1_name).to eq('Peter')
    end
  end

  describe '#user_choice' do
    it 'returns user_choice' do
      expect(game.user_choice).to eq('Rock')
    end
  end

  describe '#comp_choice' do
    it 'returns comp_choice' do
      expect(game.comp_choice).to eq('Scissors')
    end
  end
  
  describe '#win?' do
    context 'when player and computer chosen' do
      it 'returns the winner of the round' do
         expect(game.win?).to eq true
      end
    end
  end

end
