require 'game'
require 'roshambo'
include Roshambo

describe Game do
  let(:player_1) {double 'diego', :is_a_computer? => false}

  context 'against a computer' do
    let(:computer_player) {double 'computer', :is_a_computer? => true}
    let(:new_game) {Game.new }

    before do
      new_game.player_1 = player_1
      new_game.player_2 = computer_player
    end

    it 'registers player_1' do
      expect(new_game.player_1).to be player_1
    end

    it 'registers player_2' do
      expect(new_game.player_2).to eq computer_player
    end

    describe '#first_move_winner?' do
      it 'responds to #first_move_winner? ' do
        expect(new_game).to respond_to(:first_move_winner?).with(2).arguments
      end

      context 'winning moves' do
        it 'rock beats scissors' do
          expect(new_game.first_move_winner?('rock','scissors')).to be true
        end

        it 'scissors beats paper' do
          expect(new_game.first_move_winner?('scissors','paper')).to be true
        end

        it 'paper beats rock' do
          expect(new_game.first_move_winner?('paper','rock')).to be true
        end
      end

      context 'losing moves' do
        it 'scissors cannot beat rock' do
          expect(new_game.first_move_winner?('scissors','rock')).to be false
        end

        it 'paper cannot beat scissors' do
          expect(new_game.first_move_winner?('paper','scissors')).to be false
        end

        it 'rock cannot beat paper' do
          expect(new_game.first_move_winner?('rock','paper')).to be false
        end
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
