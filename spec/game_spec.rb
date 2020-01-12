require 'game'

describe Game do

let(:user) { User.new("Marcello") }
let(:game) { Game.new(user) }

  it "is initialized with a user" do
    expect(game.user).to eq user
  end

  it "has an array of weapons (rock, paper, scissors)" do
    expect(game.weapons).to eq ["rock", "paper", "scissors"]
  end

  describe '#attack' do
    it "attacks with one of the weapons and stores the info" do
      game.attack("scissors")
      expect(game.move).to eq "scissors"
    end
  end

  describe '#receive_attack' do
    it "chooses a random weapon for the opponent to use" do
      allow(game).to receive(:random).and_return(0)
      # index 0, which is 'rock', is selected for this test
      expect(game.receive_attack).to eq "rock"
    end
  end


end