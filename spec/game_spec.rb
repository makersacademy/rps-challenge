require 'game'

describe Game do
  let(:player) { double :player }
  let(:computer) { double :computer_player }
  subject(:game) { described_class.new(player, computer)}

  describe 'initialize' do
    it 'initializes with a player and stores player as player' do
      expect(game.player).to eq player
    end
    it 'initializes with computer player as default and stores' do
      expect(game.computer_player).to eq computer
    end
  end

  describe '#result' do
    context 'Player beats computer' do
      it 'returns player when player has rock, computer has scissors' do
        allow(player).to receive(:weapon).and_return(:rock)
				allow(computer).to receive(:weapon).and_return(:scissors)
				expect(game.result).to eq player
			end
			it 'returns player when player has scissors computer has paper' do
				allow(player).to receive(:weapon).and_return(:scissors)
				allow(computer).to receive(:weapon).and_return(:paper)
				expect(game.result).to eq player
			end
			it 'returns player when player has paper beats computer has rock' do
				allow(player).to receive(:weapon).and_return(:paper)
				allow(computer).to receive(:weapon).and_return(:rock)
				expect(game.result).to eq player
			end
		end
		context 'computer beats player' do
			it 'returns computer when computer has rock, player has scissors' do
				allow(player).to receive(:weapon).and_return(:scissors)
				allow(computer).to receive(:weapon).and_return(:rock)
				expect(game.result).to eq computer
			end
			it 'returns computer when computer has paper player has rock' do
				allow(player).to receive(:weapon).and_return(:rock)
				allow(computer).to receive(:weapon).and_return(:paper)
				expect(game.result).to eq computer
			end
			it 'returns computer when computer has scissors player has paper' do
				allow(player).to receive(:weapon).and_return(:paper)
				allow(computer).to receive(:weapon).and_return(:scissors)
				expect(game.result).to eq computer
			end
		end
		context 'Player and computer draw' do
			it 'returns true if player_1 and computer have picked same weapon' do
				allow(player).to receive(:weapon).and_return(:paper)
				allow(computer).to receive(:weapon).and_return(:paper)
				expect(game.result).to eq :draw
			end
		end
	end
end
