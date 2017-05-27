require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#name' do
    it 'returns the correct name' do
      expect(computer.name).to eq 'RosiePoSie'
    end
  end

  describe '#score' do
    it 'starts session with 0 wins' do
      expect(computer.score). to eq 0
    end
  end

  describe '#win_game' do
    it 'adds 1 score point to score' do
      computer.win_round
      expect(computer.score). to eq 1
    end
  end

  describe '#auto_play' do
    it 'selects a random string from the moves array' do
      allow(computer).to receive(:auto_play).and_return('rock', 'paper', 'scissors')
      expect(computer.auto_play).to eq 'rock'
      expect(computer.auto_play).to eq 'paper'
      expect(computer.auto_play).to eq 'scissors'
    end
  end
end
