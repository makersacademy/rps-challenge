require 'player'

shared_examples_for 'a player' do
  TEST_NAME = 'test player'.freeze
  let(:test_player) {described_class.new TEST_NAME}

  describe '#win_count' do

    it 'returns the current number of wins' do
      expect(test_player.win_count).to eq 0
    end

  end

  describe '#nickname' do

    it 'returns the player nickname' do
      expect(test_player.nickname).to eq TEST_NAME
    end

  end

  describe '#add_win' do

    it 'increments the number of wins by 1' do
      expect{test_player.add_win}.to change {test_player.win_count}.by 1
    end

  end

end
