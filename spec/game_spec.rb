require 'game'

describe Game do
  subject(:game) { described_class.new(options) }
  let(:options) { {"player_name" => "Anna", "player_weapon" => :rock, "opponent_weapon" => :scissors} }

  describe '#player_name' do
    it 'returns player name' do
      expect(game.player_name).to eq 'Anna'
    end
  end

  describe '#player_weapon' do
    it 'returns player weapon' do
      expect(game.player_weapon).to eq :rock
    end
  end

  describe '#opponent_weapon' do
    it 'returns opponent weapon' do
      expect(game.opponent_weapon).to eq :scissors
    end
  end

  context 'end game' do
    subject(:win_game) { game }
    subject(:lose_game) { described_class.new(lose_options) }
    subject(:draw_game) { described_class.new(draw_options) }

    let(:lose_options) { {"player_name" => "Anna", "player_weapon" => :rock, "opponent_weapon" => :paper} }
    let(:draw_options) { {"player_name" => "Anna", "player_weapon" => :rock, "opponent_weapon" => :rock} }

    describe '#win?' do
      it 'returns true if player_weapon is :rock and opponent_weapon is :scissors' do
        expect(win_game.win?).to eq true
      end
    end

    describe '#lose?' do
      it 'returns true if player_weapon is :rock and opponent_weapon is :paper' do
        expect(lose_game.lose?).to eq true
      end
    end

    describe '#draw?' do
      it 'returns true if player_weapon is :rock and opponent_weapon is :rock' do
        expect(draw_game.draw?).to eq true
      end
    end
  end
end
