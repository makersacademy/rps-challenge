require 'game'

describe Game do

  let(:game) { described_class.new(player_1) }
  let(:player_1) { double(:player, name: 'Hilary') }

  describe '#initialize' do
    it 'accepts player 1' do
      expect(game.player_1.name).to eq 'Hilary'
    end

    it 'creates a computer player' do
      allow(game.player_2).to receive(:name).and_return('Trump')
      expect(game.player_2.name).to eq 'Trump'
    end
  end

  describe '#player_select' do
    it 'adds r,p or s to the selections array' do
      game.player_select('Rock')
      expect(game.choices.empty?).to be false
    end
  end

  describe '#add_computer_selection' do
    it 'adds r,p or s to the selections array' do
      game.add_computer_selection
      expect(game.choices.empty?).to be false
    end
  end

  describe '#choices' do
    it 'contains the players selections' do
      game.player_select('Rock')
      game.add_computer_selection
      expect(game.choices.count).to eq 2
    end
  end

  describe '#win?' do
    it 'states true for rock/scissors' do
      game.player_select('Rock')
      game.player_select('Scissors')
      expect(game.send(:win?)).to be true
    end

    it 'states true for paper/rock' do
      game.player_select('Paper')
      game.player_select('Rock')
      expect(game.send(:win?)).to be true
    end

    it 'states true for scissors/paper' do
      game.player_select('Scissors')
      game.player_select('Paper')
      expect(game.send(:win?)).to be true
    end
  end

  describe '#tie?' do
    it 'states true for rock/rock' do
      game.player_select('Rock')
      game.player_select('Rock')
      expect(game.send(:tie?)).to be true
    end

    it 'states true for paper/paper' do
      game.player_select('Paper')
      game.player_select('Paper')
      expect(game.send(:tie?)).to be true
    end

    it 'states true for scissors/scissors' do
      game.player_select('Scissors')
      game.player_select('Scissors')
      expect(game.send(:tie?)).to be true
    end
  end

  describe '#result' do
    it 'shows a victory message for a win condition' do
      game.player_select('Scissors')
      game.player_select('Paper')
      expect(game.result).to eq 'Hilary wins!'
    end

    it 'shows a tie message for a tie condition' do
      game.player_select('Scissors')
      game.player_select('Scissors')
      expect(game.result).to eq 'It\'s a tie!'
    end

    it 'shows a loss message for a lose condition' do
      game.player_select('Rock')
      game.player_select('Paper')
      expect(game.result).to eq 'You lose!'
    end
  end

  describe '#choices' do
    it 'shows the player choices' do
      game.player_select('Rock')
      game.player_select('Scissors')
      expect(game.choices).to eq ['Rock','Scissors']
    end
  end

  describe '#reset' do
    it 'resets the player choices for a new game' do
      game.player_select('Rock')
      game.player_select('Scissors')
      game.replay
      expect(game.choices).to eq []
    end
  end
end
