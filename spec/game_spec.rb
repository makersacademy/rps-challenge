require 'game'

describe Game do
  let(:test_game) {described_class.new dummy_p1 , dummy_p2}
  let(:dummy_p1) {double :human_player}
  let(:dummy_p2) {double :computer_player}

  describe '#initialize' do

    it 'memorize player one correctly' do
      expect(test_game.player_one).to eq dummy_p1
    end

    it 'memorize player two correctly' do
      expect(test_game.player_two).to eq dummy_p2
    end

  end

end
