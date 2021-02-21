require 'game'

describe Game do

  let(:player_class) { double :player_class, new: player }
  let(:player) { double :player, name: "Pete", score: 0, won: true } 
  let(:random_class) { double :random_class, new: random }
  let(:random) { double :random, pick: 'Rock' }
  let(:subject) { Game.new(player, "RPS", "The computer", player_class, random_class) }

  # [@player1.name, @player2.name, @pick1, @pick2, @score1, @score2]

  context 'when initialized' do
    
    it 'should store players' do
      expect(subject.stats[:player1]).to eq "Pete"
    end

    it 'should have a score of 0 for player 1' do
      expect(subject.stats[:score1]).to eq 0
    end

    it 'should have a score of 0 for player 2' do
      expect(subject.stats[:score2]).to eq 0
    end

  end

  context 'when taking a turn' do

    context 'and you win' do

      it 'should give a winning result' do
        subject.turn("Rock", "Scissors")
        expect(subject.result).to eq :win
      end

      it 'should increase the score for player 1' do
        expect{subject.turn("Rock", "Scissors")}.to change{subject.stats[:score1]}.by 1
      end

    end

    context 'and you lose' do

      it 'should give a losing result' do
        subject.turn("Rock", "Paper")
        expect(subject.result).to eq :lose
      end

      it 'should increase the score for player 2' do
        expect{subject.turn("Rock", "Paper")}.to change{subject.stats[:score2]}.by 1
      end

    end

    context 'and you draw' do

      it 'should give a result (draw)' do
        subject.turn("Rock", "Rock")
        expect(subject.result).to eq :draw
      end

      it 'should not increase the score for player 1' do
        expect{subject.turn("Rock", "Rock")}.to change{subject.stats[:score2]}.by 0
      end
    
      it 'should not increase the score for player 2' do
        expect{subject.turn("Rock", "Rock")}.to change{subject.stats[:score2]}.by 0
      end

    end

  end

end
