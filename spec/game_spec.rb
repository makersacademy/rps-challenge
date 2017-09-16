require 'game.rb'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  let(:players) { [player_1, player_2] }
  subject(:game) { described_class.new players }

  describe '#instantiation' do
    it 'has players and weapons' do
      expect(game.players).to eq([player_1, player_2])
    end
  end

  describe '#calculating_winner' do
    it 'finds a winner' do
      allow(player_1).to receive(:weapon) { 'rock' }
      allow(player_1).to receive(:name) { 'Rory' }
      allow(player_2).to receive(:weapon) { 'paper' }
      game.calculating_winner player_1, player_2
      expect(game.result).to eq ("-1 point for #{player_1.name}!")
    end
  end

  # describe 'calculating a winner' do
  #   it 'can look for a winner' do
  #     expect(game)
  #   end
  # end

end
