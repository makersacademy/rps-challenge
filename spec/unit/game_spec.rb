require 'game'

describe Game do

  let(:player1) { double(choice: 'rock', name: 'Dec', class: 'player') }
  let(:player2) { double(choice: 'scissors', name: '') }

  let(:player3) { double(choice: 'paper', name: 'Dan', class: 'player') }
  let(:player4) { double(choice: 'scissors', name: 'Jim', class: 'player') }

  let(:player5) { double(choice: 'rock', name: 'Pam', class: 'player') }

  let(:ai_instance) { double(choice: 'scissors', name: '愛', class: RSpec::Mocks::Double) }
  let(:ai_class) { double(new: ai_instance)}

  let(:vm) { double(result: 0, choice_to_index: 0)}
  let(:vm_class) { double(new: vm)}

  let(:subject) { described_class.new([player1, player2], ai_class) }

  describe '#single_player?' do
    it 'sets single player mode and adds an AI if player 2 name is empty' do
      expect(subject.single_player?).to be true
    end

    it 'single player mode is false if player 2 name is not empty' do
      subject = described_class.new([player1, player3], ai_class, vm_class)
      expect(subject.single_player?).to be false
    end
  end

  describe '#players' do
    it 'has a record of players' do
      subject = described_class.new([player1, player3], ai_class, vm_class)
      expect(subject.players).to include(player1, player3)
    end

    it 'sets player 2 to be an AI if no name for player 2 given' do
      expect(subject.players[1]).to eq(ai_instance)
    end
  end

  describe '#result' do
    it 'returns a winning player 1' do
      vm = double(result: 0, choice_to_index: 0)
      vm_class = double(new: vm)
      subject = described_class.new([player1, player2], ai_class, vm_class)
      expect(subject.result).to eq(player1)
    end

    it 'returns nil if its a draw' do
      vm = double(result: 2, choice_to_index: 0)
      vm_class = double(new: vm)
      subject = described_class.new([player1, player5], ai_class, vm_class)
      expect(subject.result).to be nil
    end
  end
end
