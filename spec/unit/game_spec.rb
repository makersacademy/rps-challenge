require "./lib/game.rb"

describe Game do
  before(:each) do
    @player1 = double("Player 1")
    allow(@player1).to receive(:name).and_return "Player1"
    @player2 = double("Player 1")
    allow(@player2).to receive(:name).and_return "Player2"
  end

  subject { Game.new(@player1, @player2)}

  it 'can accept players as arguments and return names' do
    expect(subject.player1).to eq "Player1"
    expect(subject.player2).to eq "Player2"
  end

  context "can compare players responses:" do

    it 'Rock - Paper: Player2 wins' do
      expect(subject.compare("Rock", "Paper")).to eq "Player2 wins"
    end

    it 'Rock - Rock: Draw' do
      expect(subject.compare("Rock", "Rock")).to eq "It's a draw"
    end

    it 'Rock - Scissors: Player1 wins' do
      expect(subject.compare("Rock", "Scissors")).to eq "Player1 wins"
    end

    it 'Paper - Paper: Draw' do
      expect(subject.compare("Paper", "Paper")).to eq "It's a draw"
    end

    it 'Paper - Rock: Player1 wins' do
      expect(subject.compare("Paper", "Rock")).to eq "Player1 wins"
    end

    it 'Paper - Scissors: Player2 wins' do
      expect(subject.compare("Paper", "Scissors")).to eq "Player2 wins"
    end

    it 'Scissors - Paper: Player1 wins' do
      expect(subject.compare("Scissors", "Paper")).to eq "Player1 wins"
    end

    it 'Scissors - Rock: Player2 wins' do
      expect(subject.compare("Scissors", "Rock")).to eq "Player2 wins"
    end

    it 'Scissors - Scissors: Draw' do
      expect(subject.compare("Scissors", "Scissors")).to eq "It's a draw"
    end
  end

  it "can start and process a game and output a result" do
    expect(subject.play).to eq "It's a draw"
  end
end
