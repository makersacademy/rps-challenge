require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player, name: 'Bob', choice: 'choice' }
  let(:computer) { double :computer, rand_choice: 'choice' }

  describe '#initialize' do
    it 'starts with a new #player' do
      expect(game.player).to eq player
    end

    it 'starts with a #computer player' do
      expect(game.computer).to eq computer
    end
  end

  describe '#result' do

    it 'it returns a drew message if the game is a draw' do
      allow(player).to receive(:choice) { :rock }
      allow(computer).to receive(:choice) { :rock }
      expect(game.result).to eq "Close one Bob but you drew!"
    end

    it 'it returns a win message if the players wins' do
      allow(player).to receive(:choice) { :rock }
      allow(computer).to receive(:choice) { :scissors }
      expect(game.result).to eq "Yay Bob, you won!"
    end

    it 'it returns a lose message if the player loses' do
      allow(player).to receive(:choice) { :rock }
      allow(computer).to receive(:choice) { :paper }
      expect(game.result).to eq "Sorry Bob, you lost!"
    end
  end
end
