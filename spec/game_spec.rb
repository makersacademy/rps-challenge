require 'game'

describe Game do
  let(:game) { Game.start(player, player, computer) }
  let(:player) { double(:player, take_turn: true) }
  let(:computer) { double(:computer, take_turn: true) }

  context 'Creating and storing games' do
    describe '#start' do
      it 'Creates a new game' do
        expect(game.player).to eq player
      end
    end

    describe '#instance' do
      it 'Stores a game' do
        new_game = Game.start(:player)
        expect(Game.instance).to eq new_game
      end
    end
  end

  context 'Players' do
    describe '#player' do
      it 'Contains the first player' do
        expect(game.player).to eq player
      end
    end

    describe '#computer' do
      it 'Contains the computer player' do
        expect(game.computer).to be computer
      end
    end
  end

  context '#play' do
    describe 'Tie' do
      before do
        allow(player).to receive(:attack) { :rock }
        allow(computer).to receive(:attack) { :rock }
        game.play('rock')
      end
      it 'Tie score is 1 if attacks are the same' do
        expect(game.tie_score).to eq 1
      end
      it 'Player score is 0 if attacks are the same' do
        expect(game.player_score).to eq 0
      end
      it 'Computer score is 0 if attacks are the same' do
        expect(game.computer_score).to eq 0
      end
    end

    describe 'Player wins' do
      before do
        allow(player).to receive(:attack) { :rock }
        allow(computer).to receive(:attack) { :scissors }
        game.play('rock')
      end
      it 'Player score is 1 if player wins' do
        expect(game.player_score).to eq 1
      end
      it 'Computer score is 0 if player wins' do
        expect(game.computer_score).to eq 0
      end
      it 'Tie score is 0 if player wins' do
        expect(game.tie_score).to eq 0
      end
    end

    describe 'Computer wins' do
      before do
        allow(player).to receive(:attack) { :rock }
        allow(computer).to receive(:attack) { :paper }
        game.play('rock')
      end
      it 'Computer score is 1 if computer wins' do
        expect(game.computer_score).to eq 1
      end
      it 'Player score is 0 if player wins' do
        expect(game.player_score).to eq 0
      end
      it 'Tie score is 0 if player wins' do
        expect(game.tie_score).to eq 0
      end
    end
  end


end
