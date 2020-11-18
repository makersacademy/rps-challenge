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
      srand(4)
      testgame.player_choice = "Rock"
      expect(testgame.result).to eq "win"
    end

    it 'correctly returns lose for Paper vs Scissors' do
      srand(4)
      testgame.player_choice = "Paper"
      expect(testgame.result).to eq "lose"
    end

    it 'correctly returns draw for Scissors vs Scissors' do
      srand(4)
      testgame.player_choice = "Scissors"
      expect(testgame.result).to eq "draw"
    end

    it 'correctly returns lose for Rock vs Paper' do
      srand(1)
      testgame.player_choice = "Rock"
      expect(testgame.result).to eq "lose"
    end

    it 'correctly returns draw for Paper vs Paper' do
      srand(1)
      testgame.player_choice = "Paper"
      expect(testgame.result).to eq "draw"
    end

    it 'correctly returns win for Scissors vs Paper' do
      srand(1)
      testgame.player_choice = "Scissors"
      expect(testgame.result).to eq "win"
    end

    it 'correctly returns draw for Rock vs Rock' do
      srand(2)
      testgame.player_choice = "Rock"
      expect(testgame.result).to eq "draw"
    end

    it 'correctly returns win for Paper vs Rock' do
      srand(2)
      testgame.player_choice = "Paper"
      expect(testgame.result).to eq "win"
    end

    it 'correctly returns lose for Scissors vs Rock' do
      srand(2)
      testgame.player_choice = "Scissors"
      expect(testgame.result).to eq "lose"
    end
  end
end
