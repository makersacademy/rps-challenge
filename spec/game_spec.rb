require 'game'

describe Game do

  subject(:game) { described_class.new }

  describe 'initialize'do
    it'returns 3 play options'do
      expect(game.play_options).to eq described_class::PLAY_OPTIONS
    end
  end

  describe 'win?' do
      it 'returns true' do
        name1.choose("rock")
        expect(game.win?).to eq(true)
      end
  end

end
