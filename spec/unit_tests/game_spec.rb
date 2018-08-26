require 'game'

describe Game do
  subject { described_class.new("1P", false, "Bob") }
  let(:sub2) { described_class.new("1P", true, "Bob") }
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
    it 'can make a random move in extended version' do
      moves = ["Rock", "Paper", "Scissors", "Spock", "Lizard"]
      expect(moves).to include sub2.comp_move
    end
  end

  describe "Extended rules" do
    it 'Rock smashes Scissors' do
      sub2.move = "Rock"
      sub2.move2 = "Scissors"
      expect(sub2.winner).to eq "Bob wins!"
    end
    it 'Rock crushes Lizard' do
      sub2.move = "Rock"
      sub2.move2 = "Lizard"
      expect(sub2.winner).to eq "Bob wins!"
    end
    it 'Scissors decapite lizard' do
      sub2.move = "Scissors"
      sub2.move2 = "Lizard"
      expect(sub2.winner).to eq "Bob wins!"
    end
    it 'Scissors cut paper' do
      sub2.move = "Scissors"
      sub2.move2 = "Paper"
      expect(sub2.winner).to eq "Bob wins!"
    end
    it 'Paper disproves Spock' do
      sub2.move = "Paper"
      sub2.move2 = "Spock"
      expect(sub2.winner).to eq "Bob wins!"
    end
    it 'Paper covers rock' do
      sub2.move = "Paper"
      sub2.move2 = "Rock"
      expect(sub2.winner).to eq "Bob wins!"
    end

    it 'Spock smashes scissors' do
      sub2.move = "Spock"
      sub2.move2 = "Scissors"
      expect(sub2.winner).to eq "Bob wins!"
    end
    it 'Spock vaporises rock' do
      sub2.move = "Spock"
      sub2.move2 = "Rock"
      expect(sub2.winner).to eq "Bob wins!"
    end
    it 'Lizard poisons Spock' do
      sub2.move = "Lizard"
      sub2.move2 = "Spock"
      expect(sub2.winner).to eq "Bob wins!"
    end
    it 'Lizard eats paper' do
      sub2.move = "Lizard"
      sub2.move2 = "Paper"
      expect(sub2.winner).to eq "Bob wins!"
    end
    it 'Reverse works' do
      sub2.move = "Paper"
      sub2.move2 = "Lizard"
      expect(sub2.winner).to eq "Computer wins!"
    end
  end
end
