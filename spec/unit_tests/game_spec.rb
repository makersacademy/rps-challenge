require 'game'

describe Game do
  subject { described_class.new("1P", "Bob") }
  it 'stores the name of the player' do
    expect(subject.name).to eq "Bob"
  end

  it 'stores a move' do
    subject.move = "Rock"
    expect(subject.move).to eq "Rock"
  end

  it 'stores a second name and move' do
    subject.move2 = "Rock"
    expect(subject.move2).to eq "Rock"
    expect(subject.name2).to eq "Computer"
  end

  describe "#winner" do
    it 'returns the winner' do
      subject.move = "Rock"
      subject.move2 = "Scissors"
      expect(subject.winner).to eq "Bob wins!"
    end

    it 'returns the winner' do
      subject.move = "Rock"
      subject.move2 = "Paper"
      expect(subject.winner).to eq "Computer wins!"
    end

    it 'returns the winner' do
      subject.move = "Paper"
      subject.move2 = "Paper"
      expect(subject.winner).to eq "Draw"
    end
  end

  describe "#comp_move" do
    it 'can make a random move' do
      moves = ["Rock", "Paper", "Scissors"]
      expect(moves).to include subject.comp_move
    end
  end
end
