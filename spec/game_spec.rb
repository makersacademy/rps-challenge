require 'rspec'
require_relative '../lib/game.rb'

describe Game do

  let(:rock_hand) { double :hand, shape: :rock }
  let(:paper_hand) { double :hand, shape: :paper }
  let(:scissors_hand) { double :hand, shape: :scissors }

  context 'when running a game,' do

    it 'detects a tie.' do
      tied_game = Game.new(rock_hand, rock_hand)
      expect(tied_game.tie?).to be_truthy
    end

    it 'detects a rock win for hand 1' do
      rock_win_game = Game.new(rock_hand, scissors_hand)
      expect(rock_win_game.winner).to eq rock_hand
    end

    it 'detects a paper win for hand 2' do
      paper_win_game = Game.new(rock_hand, paper_hand)
      expect(paper_win_game.winner).to eq paper_hand
    end

    it 'detects a scissors win for hand 1' do
      scissors_win_game = Game.new(scissors_hand, paper_hand)
      expect(scissors_win_game.winner).to eq scissors_hand
    end

  end

end