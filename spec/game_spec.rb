require './lib/game'

describe Game do
  subject(:game){described_class.new}

  it "has a player choice" do
    expect(game.player_choice).to eq nil
  end

  it "has a computer choice" do
    srand(22)
    expect(game.computer_choice).to eq 'Paper'
  end

  describe "#set_player_choice" do
    it "sets the relavent attribute" do
      game.set_player_choice('Rock')
      expect(game.player_choice).to eq 'Rock'
    end
  end

  describe '#winner' do
    it 'calculates the correct winner' do
      game.set_player_choice('Paper')
      srand(22) #rock
      expect(game.winner).to eq 'You'
    end
    it 'calculates the correct winner' do
      game.set_player_choice('Rock')
      srand(23) #paper
      expect(game.winner).to eq 'The computer'
    end
    it 'calculates the correct winner' do
      game.set_player_choice('Rock')
      srand(26) #scissors
      expect(game.winner).to eq 'You'
    end
    it 'calculates the correct winner' do
      game.set_player_choice('Scissors')
      srand(25) #paper
      expect(game.winner).to eq 'You'
    end
    it 'calculates the correct winner' do
      game.set_player_choice('Scissors')
      srand(22) #rock
      expect(game.winner).to eq 'The computer'
    end
    it 'calculates the correct winner' do
      game.set_player_choice('Rock')
      srand(31) #scissors
      expect(game.winner).to eq 'The computer'
    end
    it 'calculates the correct winner' do
      game.set_player_choice('Paper')
      # srand(28) #rock
      expect(game.winner).to eq 'The computer'
    end
  end
end
