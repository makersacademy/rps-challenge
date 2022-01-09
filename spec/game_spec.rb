require 'game'

describe Game do
  subject(:game) { described_class.new(session_win) }

  let(:session_win) { { "player_1_name" => "Peter", "player_1_choice" => "Rock", "comp_choice" => "Scissors" } }
  let(:session_lose) { { "player_1_name" => "Peter", "player_1_choice" => "Rock", "comp_choice" => "Paper" } }
  let(:session_draw) { { "player_1_name" => "Peter", "player_1_choice" => "Rock", "comp_choice" => "Rock" } }

  describe '#player_1_name' do
    it 'returns entered name' do
      expect(game.player_1_name).to eq('Peter')
    end
  end

  describe '#player_1_choice' do
    it 'returns player_1_choice' do
      expect(game.player_1_choice).to eq('Rock')
    end
  end

  describe '#comp_choice' do
    it 'returns comp_choice' do
      expect(game.comp_choice).to eq('Scissors')
    end
  end

  context 'when player wins the round' do
    describe '#win?' do
      it 'returns true' do
        expect(game.win?).to eq true
      end
    end

  end

  context 'when computer wins the round' do
    describe '#lose?' do
      it 'returns true' do
        game_lose = Game.new(session_lose)
        expect(game_lose.lose?).to eq true
      end
    end

  end

  describe '#draw?' do
    context 'when player and computer draw' do
      it 'returns true' do
        game_draw = Game.new(session_draw)
        expect(game_draw.draw?).to eq true
      end
    end
  end
end
