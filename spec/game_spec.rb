require "game"

describe Game do
  let(:player) {double("player", :name => "James")}
  let(:subject) {described_class.new(player)}

  describe '.initialize' do
    it "should initialize with a choices array" do
      expect(subject.choices).to eq(['scissors', 'paper', 'rock'])
    end
  end
  describe '.set_moves' do
    it "should create and give values to both move variables" do
      subject.set_moves('rock')
      expect(["rock", "paper", "scissors"]).to include(subject.player_move)
      expect(["rock", "paper", "scissors"]).to include(subject.computer_move)
    end
  end
  describe '.output' do
    it "should return the winner or a tie" do
      subject.set_moves('rock')
      expect(["tie", "Computer", "James"]).to include(subject.output)
    end
  end
end