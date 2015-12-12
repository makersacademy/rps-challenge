require 'game'

describe Game do

  subject(:game1) { described_class.new(player1, player2) }
  subject(:game2) { described_class.new(player3, player6) }
  subject(:game3) { described_class.new(player1, player4) }
  subject(:game4) { described_class.new(player5, player2) }
  subject(:game5) { described_class.new(player2, player5) }

  let(:player1) { double :player1, name: 'Ed', choice: :paper, add_score: nil }
  let(:player2) { double :player2, name: 'Computer', choice: :paper, add_score: nil }
  let(:player3) { double :player3, name: 'Ed', choice: :rock, add_score: nil }
  let(:player4) { double :player4, name: 'Computer', choice: :rock, add_score: nil }
  let(:player5) { double :player5, name: 'Ed', choice: :scissors, add_score: nil }
  let(:player6) { double :player6, name: 'Computer', choice: :scissors, add_score: nil }

  describe 'defaults' do
    it 'should initialize with two players' do
      expect(game1.player1).to eq player1
      expect(game1.player2).to eq player2
    end

    it 'should store a hash detailing the RPS choices' do
      expect(game1.rules).to eq(:rock=>:scissors, :paper=>:rock, :scissors=>:paper)
    end

    it 'should initialize with a nil winner' do
      expect(game1.winner).to be nil
    end
  end

  describe '#who_won' do
    it 'should recognise a draw' do
      game1.outcome
      expect(game1.winner).to eq 'draw'
    end

    it 'should recognise rock beats scissors' do
      game2.outcome
      expect(game2.winner).to eq player3
    end

    it 'should recognise paper beats rocks' do
      game3.outcome
      expect(game3.winner).to eq player1
    end

    it 'should recognise scissors beats paper' do
      game4.outcome
      expect(game4.winner).to eq player5
    end

    it 'should recognise scissors beats paper: reverse players' do
      game5.outcome
      expect(game5.winner).to eq player5
    end
  end

  describe '#round' do
    it 'should monitor how many rounds have been played' do
      game1.outcome
      game1.outcome
      expect(game1.round).to eq 3
    end
  end

  describe '#score' do
    it 'should monitor the player scores' do
      expect(player3).to receive(:add_score)
      game2.outcome
    end
  end
end
