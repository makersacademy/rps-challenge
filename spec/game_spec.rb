require 'game'

describe Game do
  subject(:game) { described_class.new(session) }
  let(:session) { { "player_1_name" => "Peter", "user_choice" => "Rock", "comp_choice" => "Rock" } }

  describe '#player_1_name' do
    it 'returns entered name' do
      expect(game.player_1_name).to eq('Peter')
    end
  end

  describe '#user_choice' do
    it 'returns user_choice' do
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
      expect(game.comp_choice).to eq('Rock')
    end
  end 

end
