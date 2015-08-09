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

  context '#match_result' do
    it 'should return 0 if it\'s a draw' do
      allow(p_1).to receive(:move) { :rock }
      allow(p_2).to receive(:move) { :rock }
      expect(subject.match_result).to eq 0
    end

    it 'should return 1 if p_1 wins' do
      allow(p_1).to receive(:move) { :paper }
      allow(p_2).to receive(:move) { :rock }
      expect(subject.match_result).to eq 1
    end

    it 'should return 2 if p_2 wins' do
      allow(p_1).to receive(:move) { :scissors }
      allow(p_2).to receive(:move) { :rock }
      expect(subject.match_result).to eq 2
    end
  end

  context '#wins_incrementer' do
    it 'should increment the wins of player 1' do
      allow(subject).to receive(:match_result) { 1 }
      expect(subject.p_1).to receive(:win)
      subject.wins_incrementer
    end
    it 'should increment the wins of player 1' do
      allow(subject).to receive(:match_result) { 2 }
      expect(subject.p_2).to receive(:win)
      subject.wins_incrementer
    end
  end

  context '#match_winner' do
    it 'should declare player 1 as the match winner' do
      allow(subject).to receive(:match_result) { 1 }
      expect(subject.match_winner).to eq "#{p_1.name.capitalize} wins the match"
    end
    it 'should declare player 1 as the match winner' do
      allow(subject).to receive(:match_result) { 2 }
      expect(subject.match_winner).to eq "#{p_2.name.capitalize} wins the match"
    end
    it 'should declare a draw' do
      allow(subject).to receive(:match_result) { 0 }
      expect(subject.match_winner).to eq "This match is a draw"
    end
  end

  context '#final_winner' do
    it 'should declare player 1 as the final winner' do
      allow(p_1).to receive(:wins) { 3 }
      allow(p_2).to receive(:wins) { 2 }
      expect(subject.final_winner).to eq "#{p_1.name.capitalize} wins the game!"
    end
    it 'should declare player 2 as the final winner' do
      allow(p_1).to receive(:wins) { 2 }
      allow(p_2).to receive(:wins) { 3 }
      expect(subject.final_winner).to eq "#{p_2.name.capitalize} wins the game!"
    end
    it 'should declare a draw' do
      allow(p_1).to receive(:wins) { 2 }
      allow(p_2).to receive(:wins) { 2 }
      expect(subject.final_winner).to eq "It's a draw!"
    end
  end
end
