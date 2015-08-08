require_relative '../lib/game'

describe Game do
  let(:p_1) { double :p_1, name: 'player 1' }
  let(:p_2) { double :p_2, name: 'COMPUTER' }
  subject { Game.new(p_1, p_2) }

  before do
    allow(p_1).to receive(:make_move)
    allow(p_2).to receive(:make_move)
  end

  context '#select_moves' do
    it 'should allow the players to select a move' do
      expect(subject.p_1).to receive(:make_move).with(:rock)
      subject.select_moves(:rock, :paper)
    end

    it 'should return a random move when the second player is COMPUTER' do
      expect(subject.p_2).to receive(:make_move).with(:rock)
      allow(subject).to receive(:random_move) { :rock }
      subject.select_moves(:scissors, :paper)
    end
  end

end
