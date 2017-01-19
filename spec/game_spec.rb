require 'game'

describe Game do

  subject(:game) {described_class.new(player,opponent)}
  let(:player) {double :player}
  let(:opponent) {double :opponent}

  it "should have a player" do
    expect(game.player1).to eq player
  end

  it {is_expected.to respond_to(:outcome)}
  it {is_expected.to respond_to(:message)}

  describe "Deciding the outcome of the game" do

    it "player loses when choosing a rock against paper" do
      allow(player).to receive(:weapon).and_return(:rock)
      allow(opponent).to receive(:weapon).and_return(:paper)
      expect(game.outcome).to eq "You lose!"
    end

    it "player wins when choosing rock against scissors" do
      allow(player).to receive(:weapon).and_return(:rock)
      allow(opponent).to receive(:weapon).and_return(:scissors)
      expect(game.outcome).to eq "You win!"
    end

    it "player draws when choosing the same weapon as their opponent" do
      allow(player).to receive(:weapon).and_return(:rock)
      allow(opponent).to receive(:weapon).and_return(:rock)
      expect(game.outcome).to eq "Draw!"
    end

    it "player loses when choosing paper against scissors" do
      allow(player).to receive(:weapon).and_return(:paper)
      allow(opponent).to receive(:weapon).and_return(:scissors)
      expect(game.outcome).to eq "You lose!"
    end

    it "player wins when choosing paper against rock" do
      allow(player).to receive(:weapon).and_return(:paper)
      allow(opponent).to receive(:weapon).and_return(:rock)
      expect(game.outcome).to eq "You win!"
    end

    it "player draws choosing paper against paper" do
      allow(player).to receive(:weapon).and_return(:paper)
      allow(opponent).to receive(:weapon).and_return(:paper)
      expect(game.outcome).to eq "Draw!"
    end

    it "player loses when choosing scissors against rock" do
      allow(player).to receive(:weapon).and_return(:scissors)
      allow(opponent).to receive(:weapon).and_return(:rock)
      expect(game.outcome).to eq "You lose!"
    end

    it "player wins when choosing scissors against paper" do
      allow(player).to receive(:weapon).and_return(:scissors)
      allow(opponent).to receive(:weapon).and_return(:paper)
      expect(game.outcome).to eq "You win!"
    end

    it "player draws choosing scissors against scissors" do
      allow(player).to receive(:weapon).and_return(:scissors)
      allow(opponent).to receive(:weapon).and_return(:scissors)
      expect(game.outcome).to eq "Draw!"
    end


  end

  describe "Printing the message" do
    it "message displays the opponents weapon" do
      allow(opponent).to receive(:weapon).and_return(:rock)
      expect(game.message).to eq "Your opponent chose rock"
      allow(opponent).to receive(:weapon).and_return(:paper)
      expect(game.message).to eq "Your opponent chose paper"
    end
  end


end
