require 'game'

describe Game do

  subject(:game) {described_class.new("Alex")}

  describe '#initialize' do

    it "sets the players name when the game is initialized" do
      expect(game.player_name).to eq "Alex"
    end

    it "sets the players anme to 'Guest' if the game is initialized with no name" do
      game = Game.new
      expect(game.player_name).to eq "Guest"
    end

    it "sets the players choice to an empty string" do
      expect(game.player_choice).to eq ""
    end

    it "sets the computers choice to an empty string" do
      expect(game.computer_choice).to eq ""
    end
  end

  describe '#get_computer_choice' do

    it "sets the computers choice to 'Rock' if the random number generator returns a 1" do
      allow(game).to receive(:random_number).and_return(1)
      expect(game.get_computer_choice).to eq "Rock"
    end

    it "sets the computers choice to 'Paper' if the random number generator returns a 2" do
      allow(game).to receive(:random_number).and_return(2)
      expect(game.get_computer_choice).to eq "Paper"
    end

    it "sets the computers choice to 'Scissors' if the random number generator returns a 3" do
      allow(game).to receive(:random_number).and_return(3)
      expect(game.get_computer_choice).to eq "Scissors"
    end
  end

  describe '#set_player_choice' do

    it "sets the player choice to 'Rock'" do
      game.set_player_choice("Rock")
      expect(game.player_choice).to eq "Rock"
    end

    it "sets the player choice to 'Paper'" do
      game.set_player_choice("Paper")
      expect(game.player_choice).to eq "Paper"
    end

    it "sets the player choice to 'Scissors'" do
      game.set_player_choice("Scissors")
      expect(game.player_choice).to eq "Scissors"
    end
  end

  describe '#random_number' do

    it "runs random_number 50 times and expects 1 to be returned at least once" do
      ones = 0
      50.times {
        case game.random_number
          when 1
            ones += 1
        end}
      expect(ones).not_to be_zero
    end

    it "runs random_number 50 times and expects 2 to be returned at least once" do
      twos = 0
      50.times {
        case game.random_number
          when 2
            twos += 1
        end}
      expect(twos).not_to be_zero
    end

    it "runs random_number 50 times and expects 3 to be returned at least once" do
      threes = 0
      50.times {
        case game.random_number
          when 3
            threes += 1
        end}
      expect(threes).not_to be_zero
    end
  end

  describe '#compare_choices' do

    it "returns 'Draw' if both the players choice and the computers are 'Rock'" do
      game.set_player_choice("Rock")
      allow(game).to receive(:random_number).and_return(1)
      game.get_computer_choice
      expect(game.compare_choices).to eq "Draw"
    end

    it "returns 'Draw' if both the players choice and the computers are 'Paper'" do
      game.set_player_choice("Paper")
      allow(game).to receive(:random_number).and_return(2)
      game.get_computer_choice
      expect(game.compare_choices).to eq "Draw"
    end

    it "returns 'Draw' if both the players choice and the computers are 'Scissors'" do
      game.set_player_choice("Scissors")
      allow(game).to receive(:random_number).and_return(3)
      game.get_computer_choice
      expect(game.compare_choices).to eq "Draw"
    end

    it "returns '(the players name) wins.' if the player chooses 'Rock' and the computer chooses 'Scissors'" do
      game.set_player_choice("Rock")
      allow(game).to receive(:random_number).and_return(3)
      game.get_computer_choice
      expect(game.compare_choices).to eq "Alex wins."
    end

    it "returns '(the players name) wins.' if the player chooses 'Paper' and the computer chooses 'Rock'" do
      game.set_player_choice("Paper")
      allow(game).to receive(:random_number).and_return(1)
      game.get_computer_choice
      expect(game.compare_choices).to eq "Alex wins."
    end

    it "returns '(the players name) wins.' if the player chooses 'Scissors' and the computer chooses 'Paper'" do
      game.set_player_choice("Scissors")
      allow(game).to receive(:random_number).and_return(2)
      game.get_computer_choice
      expect(game.compare_choices).to eq "Alex wins."
    end

    it "returns 'Computer wins.' if the player chooses 'Rock' and the computer chooses 'Paper'" do
      game.set_player_choice("Rock")
      allow(game).to receive(:random_number).and_return(2)
      game.get_computer_choice
      expect(game.compare_choices).to eq "Computer wins."
    end

    it "returns 'Computer wins.' if the player chooses 'Paper' and the computer chooses 'Scissors'" do
      game.set_player_choice("Paper")
      allow(game).to receive(:random_number).and_return(3)
      game.get_computer_choice
      expect(game.compare_choices).to eq "Computer wins."
    end

    it "returns 'Computer wins.' if the player chooses 'Scissors' and the computer chooses 'Rock'" do
      game.set_player_choice("Scissors")
      allow(game).to receive(:random_number).and_return(1)
      game.get_computer_choice
      expect(game.compare_choices).to eq "Computer wins."
    end
  end
end
