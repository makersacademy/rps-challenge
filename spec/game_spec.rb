require 'game'

describe Game do
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }
  subject(:game) { described_class.new(player_1, player_2)}

  describe 'initialize' do
    it 'initializes with a player and stores player as player' do
      expect(game.player_1).to eq player_1
    end
    it 'initializes with player_2 player as default and stores' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#set_player_1_weapon' do
    it 'calls weapon_choice on player' do
      expect(player_1).to receive(:weapon_choice).with('Rock')
      game.set_player_1_weapon('Rock')
    end
    describe '#set_player_2_weapon' do
      it 'calls weapon_choice on player' do
        expect(player_2).to receive(:weapon_choice).with('Rock')
        game.set_player_2_weapon('Rock')
      end
    end
  end

  describe '#result' do
    context 'Player_1 beats player_2' do
      it 'returns player_1 when player has rock, player_2 has scissors' do
        allow(player_1).to receive(:weapon).and_return(:rock)
				allow(player_2).to receive(:weapon).and_return(:scissors)
				expect(game.result).to eq player_1
			end
			it 'returns player_1 when player has scissors player_2 has paper' do
				allow(player_1).to receive(:weapon).and_return(:scissors)
				allow(player_2).to receive(:weapon).and_return(:paper)
				expect(game.result).to eq player_1
			end
			it 'returns player_1 when player_1 has paper beats player_2 has spock' do
				allow(player_1).to receive(:weapon).and_return(:paper)
				allow(player_2).to receive(:weapon).and_return(:spock)
				expect(game.result).to eq player_1
			end
      it 'returns player_1 when player_1 has paper beats player_2 has rock' do
				allow(player_1).to receive(:weapon).and_return(:paper)
				allow(player_2).to receive(:weapon).and_return(:rock)
				expect(game.result).to eq player_1
			end
      it 'returns player_1 when player_1 has lizard beats player_2 has lizard' do
				allow(player_1).to receive(:weapon).and_return(:lizard)
				allow(player_2).to receive(:weapon).and_return(:spock)
				expect(game.result).to eq player_1
			end
		end
		context 'player_2 beats player_1' do
			it 'returns player_2 when player_2 has scissors, player_1 has lizard' do
				allow(player_1).to receive(:weapon).and_return(:lizard)
				allow(player_2).to receive(:weapon).and_return(:scissors)
				expect(game.result).to eq player_2
			end
			it 'returns player_2 when player_2 has rock player_1 has lizard' do
				allow(player_1).to receive(:weapon).and_return(:lizard)
				allow(player_2).to receive(:weapon).and_return(:rock)
				expect(game.result).to eq player_2
			end
			it 'returns player_2 when player_2 has scissors player_1 has paper' do
				allow(player_1).to receive(:weapon).and_return(:paper)
				allow(player_2).to receive(:weapon).and_return(:scissors)
				expect(game.result).to eq player_2
			end
      it 'returns player_2 when player_2 has lizard player_1 has paper' do
				allow(player_1).to receive(:weapon).and_return(:paper)
				allow(player_2).to receive(:weapon).and_return(:lizard)
				expect(game.result).to eq player_2
			end
      it 'returns player_2 when player_2 has spock player_1 has scissors' do
				allow(player_1).to receive(:weapon).and_return(:scissors)
				allow(player_2).to receive(:weapon).and_return(:spock)
				expect(game.result).to eq player_2
			end
		end
		context 'Player and player_2 draw' do
			it 'returns true if player_1 and player_2 have picked same weapon' do
				allow(player_1).to receive(:weapon).and_return(:paper)
				allow(player_2).to receive(:weapon).and_return(:paper)
				expect(game.result).to eq :draw
			end
		end
	end
end
