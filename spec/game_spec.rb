require 'game'

describe Game do
  subject(:game) {described_class.new(player, computer)}
  let(:player) {double(:player, choice: :rock)}
  let(:computer) {double(:computer, choice: :scissors)}

  describe '#initialize' do
    it 'saves the current player' do
      expect(game.player).to eq player
    end

    it 'saves the computer object' do
      expect(game.computer).to eq computer
    end
  end

  describe '#get_result' do
    it 'calculates the result' do
      game.get_result
      expect(game.result).to eq :win
    end
  end
end
