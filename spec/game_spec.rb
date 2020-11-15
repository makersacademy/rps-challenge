require 'game'

describe Game do
  let(:testgame) { Game.new("Test") }

  it 'instantiates with a player' do
    expect(testgame).to be_instance_of Game
  end

  it 'instantiates with a random computer_choice' do
    srand(4)
    expect(testgame.computer_choice).to eq "Scissors"
  end

  describe "results" do
    it 'correctly returns win for Rock vs Scissors' do
      testgame.player_choice = "Rock"
      testgame.computer_choice = "Scissors"
      expect(testgame.result).to eq "win"
    end

    it 'correctly returns lose for Rock vs Paper' do
      testgame.player_choice = "Rock"
      testgame.computer_choice = "Paper"
      expect(testgame.result).to eq "lose"
    end

    it 'correctly returns draw for Rock vs Rock' do
      testgame.player_choice = "Rock"
      testgame.computer_choice = "Rock"
      expect(testgame.result).to eq "draw"
    end

    it 'correctly returns win for Paper vs Rock' do
      testgame.player_choice = "Paper"
      testgame.computer_choice = "Rock"
      expect(testgame.result).to eq "win"
    end

    it 'correctly returns lose for Paper vs Scissors' do
      testgame.player_choice = "Paper"
      testgame.computer_choice = "Scissors"
      expect(testgame.result).to eq "lose"
    end

    it 'correctly returns draw for Paper vs Paper' do
      testgame.player_choice = "Paper"
      testgame.computer_choice = "Paper"
      expect(testgame.result).to eq "draw"
    end

    it 'correctly returns win for Scissors vs Paper' do
      testgame.player_choice = "Scissors"
      testgame.computer_choice = "Paper"
      expect(testgame.result).to eq "win"
    end

    it 'correctly returns lose for Scissors vs Rock' do
      testgame.player_choice = "Scissors"
      testgame.computer_choice = "Rock"
      expect(testgame.result).to eq "lose"
    end

    it 'correctly returns draw for Scissors vs Scissors' do
      testgame.player_choice = "Scissors"
      testgame.computer_choice = "Scissors"
      expect(testgame.result).to eq "draw"
    end
  end
end
