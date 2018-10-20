require 'game'

describe Game do

  it 'user selects a move' do
    subject.player_selection(:rock)
    expect(subject.player_1_move).to eq :rock
  end

  it 'computer selects a move' do
    subject.player_selection(:rock)
    expect(subject.player_2_move).not_to be nil
  end

  context 'determines a winner and a loser' do
    it 'rock vs scissors - rock wins' do
      subject.player_selection(:rock)
      expect(subject.play(subject.player_1_move, :scissors)).to eq 'player_1'
    end

    it 'paper vs scissors - scissors wins' do
      subject.player_selection(:paper)
      expect(subject.play(subject.player_1_move, :scissors)).to eq 'player_2'
    end

    it 'has a winning message' do
      subject.player_selection(:rock)
      winner = subject.play(subject.player_1_move, :scissors)
      expect(subject.winning_message(winner)).to eq "player_1 won the round"
    end

    it 'has a draw message' do
      subject.player_selection(:paper)
      winner = subject.play(subject.player_1_move, :paper)
      expect(subject.winning_message(winner)).to eq "It's a draw!"
    end
  end

end
