require 'game'

describe Game do
  subject(:game) { Game.new }

  describe '#calculate_result' do
    it 'responds to two arguments' do
      expect(game).to respond_to(:calculate_result).with(2)
    end

    it 'fails if the first move is not rock, paper or scissors' do
      expect{ game.calculate_result('elephant','rock') }.to raise_error 'Incorrect move'
    end

    it 'fails if the first move is not rock, paper or scissors' do
      expect{ game.calculate_result('rock','octopus') }.to raise_error 'Incorrect move'
    end

    it 'outputs true for a winning game' do
      expect(game.calculate_result('rock','scissors')).to eq true
      expect(game.calculate_result('paper','rock')).to eq true
      expect(game.calculate_result('scissors','paper')).to eq true
    end

    it 'outputs nil for a drawn game' do
      expect(game.calculate_result('rock','rock')).to eq nil
      expect(game.calculate_result('scissors','scissors')).to eq nil
      expect(game.calculate_result('paper','paper')).to eq nil
    end

    it 'outputs false for a losing game' do
      expect(game.calculate_result('rock','paper')).to eq false
      expect(game.calculate_result('scissors','rock')).to eq false
      expect(game.calculate_result('paper','scissors')).to eq false
    end
  end
end