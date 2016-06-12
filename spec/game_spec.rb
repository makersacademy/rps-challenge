require 'game'

describe Game do
  
  subject(:game) { described_class.new("Andy", computer_spy) }
  let(:computer_spy) { spy(:computer_spy) }

  describe 'player' do
    it 'returns the player name' do
      expect(game.player).to eq "Andy"
    end
  end
  
  describe 'choice' do
    it 'returns nil' do
      expect(game.choice).to eq nil
    end

    it 'returns rock' do
      game.set_choice("rock")
      expect(game.choice).to eq "rock"
    end

    it 'returns paper' do
      game.set_choice("paper")
      expect(game.choice).to eq "paper"
    end
    
    it 'returns scissors' do
      game.set_choice("scissors")
      expect(game.choice).to eq "scissors"
    end
  end

  describe '#computer' do
    it 'returns a computer object' do
      expect(game.computer).to respond_to(:choice)
    end
  end

  describe '#self.set_game' do
    it 'returns a game object' do
      Game.set_game("new")
      expect(Game.instance.player).to eq "new"
    end
  end

  describe '#set_computer' do
    it 'calls the set_choice_method on computer' do
      game.set_computer
      expect(computer_spy).to have_received "set_choice"
    end
  end
end
