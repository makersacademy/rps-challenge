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

  describe '#outcome' do
    context 'rock' do
      before(:each) do
        game.set_choice("rock")
      end
      
      it 'rock draws with rock' do
        allow(computer_spy).to receive(:choice).and_return(:rock)
        expect(game.outcome).to eq :draw
      end
      
      it 'rock loses to paper' do
        allow(computer_spy).to receive(:choice).and_return(:paper)
        expect(game.outcome).to eq :loss
      end

      it 'rock beats scissors' do
        allow(computer_spy).to receive(:choice).and_return(:scissors)
        expect(game.outcome).to eq :win
      end
    end

    context 'paper' do
      before(:each) do
        game.set_choice("paper")
      end
      
      it 'paper draws with paper' do
        allow(computer_spy).to receive(:choice).and_return(:paper)
        expect(game.outcome).to eq :draw
      end
      
      it 'paper loses to scissors' do
        allow(computer_spy).to receive(:choice).and_return(:scissors)
        expect(game.outcome).to eq :loss
      end

      it 'paper beats rock' do
        allow(computer_spy).to receive(:choice).and_return(:rock)
        expect(game.outcome).to eq :win
      end
    end
  end
end
