require 'game'
require 'roshambo'
include Roshambo

describe Game do
  let(:player_1) {double 'diego', :is_a_computer? => false }

  context 'against a computer' do
    let(:computer_player) {double 'computer', :is_a_computer? => true}
    let(:new_game) {Game.new player_1, computer_player}

    it 'registers player_1' do
      expect(new_game.player_1).to be player_1
    end

    it 'registers player_2' do
      expect(new_game.player_2).to eq computer_player
    end

    describe '#player_move' do
      it 'responds to #player_move ' do
        expect(new_game).to respond_to(:player_move).with(1).argument
      end

      it 'returns move for player' do
        expect(new_game.player_move 'scissors').to eq(:scissors)
      end

      it 'only allows to make correct move' do
        expect(new_game.player_move 'spaghetti').to eq "scissors, paper or rock - Choose your move wisely!"
      end
    describe '#computer_beats_player?'
      it 'tells player he/she won' do
        new_game.player_move 'scissors'
        allow(new_game).to receive(:computer_beats_player?).with('scissors').and_return(true)
        expect(new_game.computer_beats_player? 'scissors').to eq true
      end
    end

    describe '#random_automated_move' do
      it 'returns a paper/scissors/rock' do
        allow(new_game).to receive(:random_move).and_return(:scissors)
        expect(new_game.random_move).to eq(:scissors)
      end

    end

  end
end
