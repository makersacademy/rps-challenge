require 'game'

describe Game do
  
  subject(:game) { described_class.new(player_name, computer) }
  let(:player_name) { double 'Player', player_name: 'Doby' }
  let(:computer) { double 'Computer' }
  
  describe '#initialize' do
    it 'creates a new game with a player' do
      expect(game.player).to eq player_name
    end

    it 'creates a new game with the computer' do
      expect(game.computer).to eq computer
    end
  end

  describe '.instance' do
    it { is_expected.to be_instance_of(Game) }
  end
  
  describe '#winner' do
    context 'Player wins' do
      it 'States player as winner if it chooses rock and computer chooses scissors' do
        allow(player_name).to receive(:option).and_return('Rock')
        allow(computer).to receive(:computer_option).and_return('Scissors')
        expect(game.winner).to eq 'Doby wins'
      end

      it 'States player as winner if it chooses scissors and computer chooses paper' do
        allow(player_name).to receive(:option).and_return('Scissors')
        allow(computer).to receive(:computer_option).and_return('Paper')
        expect(game.winner).to eq 'Doby wins'
      end

      it 'States player as winner if it chooses paper and computer chooses rock' do
        allow(player_name).to receive(:option).and_return('Paper')
        allow(computer).to receive(:computer_option).and_return('Rock')
        expect(game.winner).to eq 'Doby wins'
      end
    end

    context 'Player loses' do
      it 'States computer as winner if player chooses scissors and computer chooses rock' do
        allow(player_name).to receive(:option).and_return('Scissors')
        allow(computer).to receive(:computer_option).and_return('Rock')
        expect(game.winner).to eq 'Computer wins'
      end

      it 'States computer as winner if player chooses paper and computer chooses scissors' do
        allow(player_name).to receive(:option).and_return('Paper')
        allow(computer).to receive(:computer_option).and_return('Scissors')
        expect(game.winner).to eq 'Computer wins'
      end

      it 'States computer as winner if player chooses rock and computer chooses paper' do
        allow(player_name).to receive(:option).and_return('Rock')
        allow(computer).to receive(:computer_option).and_return('Paper')
        expect(game.winner).to eq 'Computer wins'
      end
    end

    context 'It is a draw' do
      it 'States a draw if both player and computer choose scissors' do
        allow(player_name).to receive(:option).and_return('Scissors')
        allow(computer).to receive(:computer_option).and_return('Scissors')
        expect(game.winner).to eq 'It is a draw'
      end

      it 'States a draw if both player and computer choose paper' do
        allow(player_name).to receive(:option).and_return('Paper')
        allow(computer).to receive(:computer_option).and_return('Paper')
        expect(game.winner).to eq 'It is a draw'
      end

      it 'States a draw if both player and computer choose rock' do
        allow(player_name).to receive(:option).and_return('Rock')
        allow(computer).to receive(:computer_option).and_return('Rock')
        expect(game.winner).to eq 'It is a draw'
      end
    end
  end
end
