require 'game'

describe Game do

  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }
  before(:each) { allow(player_1).to receive(:opponent=) }
  before(:each) { allow(player_2).to receive(:opponent=) }
  subject { Game.new(player_1, player_2) }

  context '#initialize game class should contain 2 players' do
    it 'should contain first player' do
      expect(subject.player_1).to eq player_1
    end

    it 'should contain another player' do
      expect(subject.player_2).to eq player_2
    end
  end

  context '#each_round_outcome' do

    context 'draws' do
      it 'should return draw if both players choose the same move' do
        allow(player_1).to receive(:final_move) { :rock }
        allow(player_2).to receive(:final_move) { :rock }
        expect(subject.each_round_outcome).to eq :draw
      end
    end

    context 'rocks versus scissors' do
      it 'player 1 wins if rock against player 2 scissors' do
        allow(player_1).to receive(:final_move) { :rock }
        allow(player_2).to receive(:final_move) { :scissors }
        allow(player_1).to receive(:wins)
        expect(subject.each_round_outcome).to eq "Player 1 Wins This Round!"
      end

      it 'call player 1 method to update number of wins' do
        allow(player_1).to receive(:final_move) { :rock }
        allow(player_2).to receive(:final_move) { :scissors }
        expect(player_1).to receive(:wins)
        subject.each_round_outcome
      end

      it 'player 2 wins if rock against player 1 scissors' do
        allow(player_1).to receive(:final_move) { :scissors }
        allow(player_2).to receive(:final_move) { :rock }
        allow(player_2).to receive(:wins)
        expect(subject.each_round_outcome).to eq "Player 2 Wins This Round!"
      end

      it 'call player 2 method to update number of wins' do
        allow(player_1).to receive(:final_move) { :scissors }
        allow(player_2).to receive(:final_move) { :rock }
        expect(player_2).to receive(:wins)
        subject.each_round_outcome
      end
    end

    context 'scissors versus paper' do
      it 'player 1 wins if scissors against player 2 paper' do
        allow(player_1).to receive(:final_move) { :scissors }
        allow(player_2).to receive(:final_move) { :paper }
        allow(player_1).to receive(:wins)
        expect(subject.each_round_outcome).to eq "Player 1 Wins This Round!"
      end

      it 'call player 1 method to update number of wins' do
        allow(player_1).to receive(:final_move) { :scissors }
        allow(player_2).to receive(:final_move) { :paper }
        expect(player_1).to receive(:wins)
        subject.each_round_outcome
      end

      it 'player 2 wins if scissors against player 1 paper' do
        allow(player_1).to receive(:final_move) { :paper }
        allow(player_2).to receive(:final_move) { :scissors }
        allow(player_2).to receive(:wins)
        expect(subject.each_round_outcome).to eq "Player 2 Wins This Round!"
      end

      it 'call player 2 method to update number of wins' do
        allow(player_1).to receive(:final_move) { :paper }
        allow(player_2).to receive(:final_move) { :scissors }
        expect(player_2).to receive(:wins)
        subject.each_round_outcome
      end
    end

    context 'rock versus paper' do
      it 'player 1 wins if paper against player 2 rock' do
        allow(player_1).to receive(:final_move) { :paper }
        allow(player_2).to receive(:final_move) { :rock }
        allow(player_1).to receive(:wins)
        expect(subject.each_round_outcome).to eq "Player 1 Wins This Round!"
      end

      it 'call player 1 method to update number of wins' do
        allow(player_1).to receive(:final_move) { :paper }
        allow(player_2).to receive(:final_move) { :rock }
        expect(player_1).to receive(:wins)
        subject.each_round_outcome
      end

      it 'player 2 wins if paper against player 1 rock' do
        allow(player_1).to receive(:final_move) { :rock }
        allow(player_2).to receive(:final_move) { :paper }
        allow(player_2).to receive(:wins)
        expect(subject.each_round_outcome).to eq "Player 2 Wins This Round!"
      end

      it 'call player 2 method to update number of wins' do
        allow(player_1).to receive(:final_move) { :rock }
        allow(player_2).to receive(:final_move) { :paper }
        expect(player_2).to receive(:wins)
        subject.each_round_outcome
      end
    end

  end

  context '#has_winner?' do
    it 'should return true if there is a winner' do
      allow(player_1).to receive(:win_counter) { 2 }
      allow(player_2).to receive(:win_counter) { 1 }
      expect(subject.has_winner?).to eq true
    end

    it 'should return false if no winner' do
      allow(player_1).to receive(:win_counter) { 1 }
      allow(player_2).to receive(:win_counter) { 1 }
      expect(subject.has_winner?).to eq false
    end
  end
end