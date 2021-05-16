require 'game'

describe Game do

  describe '#computer_attack' do
    subject(:game) { described_class.new('Charlie') }

    it 'returns a string' do
      expect(game.computer_attack).to be_a String
    end

    it 'chooses scissors' do
      allow(Kernel).to receive(:rand).and_return(0)
      expect(game.computer_attack).to eq('Scissors')
    end   

    it 'chooses rock' do
      allow(Kernel).to receive(:rand).and_return(1)
      expect(game.computer_attack).to eq('Rock')
    end   

    it 'chooses paper' do
      allow(Kernel).to receive(:rand).and_return(2)
      expect(game.computer_attack).to eq('Paper')
    end   

    it 'randomly selects an element from an array' do
      expect(['Scissors', 'Rock', 'Paper']).to include (game.computer_attack)
    end
  end

  describe '#winner' do
    subject(:game) { described_class.new('Charlie') }

    it 'notifies the player when they win' do
      allow(game).to receive_messages(player_move: 'Scissors', computer_move: 'Paper')
      expect(game.winner).to eq 'Charlie wins!'
    end

    it 'notifies the player when they lose' do
      allow(game).to receive_messages(player_move: 'Paper', computer_move: 'Scissors')
      expect(game.winner).to eq 'Computer wins!'
    end

    it 'notifies the player when there is a draw' do
      allow(game).to receive_messages(player_move: 'Paper', computer_move: 'Paper')
      expect(game.winner).to eq 'Draw!'
    end
  end
end