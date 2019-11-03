require 'game'

describe Game do

  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  describe 'player' do
    it 'retrieves the player' do
      expect(game.player).to eq player
    end
  end

  describe 'computer' do
    it 'retrieves a computer player' do
      expect(game.computer).to eq computer
    end
  end

  describe 'player wins' do

    before do
      allow(player).to receive(:choice).and_return 'rock'
      allow(computer).to receive(:choice).and_return 'scissors'
    end

    it 'checks if player won' do
      expect(game.result).to eq 'winner'
    end

  end

  describe 'computer wins' do

    before do
      allow(player).to receive(:choice).and_return 'scissors'
      allow(computer).to receive(:choice).and_return 'rock'
    end

    it 'checks if computer won' do
      expect(game.result).to eq 'loser'
    end

  end

end
