require 'game'

describe Game do

  let(:player1) { double(choice: 'rock', name: 'Dec', class: 'player') }
  let(:player2) { double(choice: 'scissors', name: '') }

  let(:player3) { double(choice: 'paper', name: 'Dan', class: 'player') }
  let(:player4) { double(choice: 'scissors', name: 'Jim', class: 'player') }

  let(:player5) { double(choice: 'rock', name: 'Pam', class: 'player') }

  let(:ai_instance) { double(choice: 'scissors', name: '愛', class: RSpec::Mocks::Double) }
  let(:ai_class) { double(new: ai_instance)}

  let(:subject) { described_class.new([player1, player2], ai_class) }

  describe '#single_player?' do
    it 'sets single player mode and adds an AI if player 2 name is empty' do
      expect(subject.single_player?).to be true
    end

    it 'single player mode is false if player 2 name is not empty' do
      subject = described_class.new([player1, player3], ai_class)
      expect(subject.single_player?).to be false
    end
  end

  describe '#players' do
    it 'has a record of players' do
      subject = described_class.new([player1, player3], ai_class
      )
      expect(subject.players).to include(player1, player3)
    end

    it 'sets player 2 to be an AI if no name for player 2 given' do
      expect(subject.players[1]).to eq(ai_instance)
    end
  end

  describe '#result' do
    it 'returns a tuple for player 1 winning' do
      expect(subject.result).to eq([1, player1])
    end

    it 'returns a tuple for player 4 winning' do
      subject = described_class.new([player3, player4], ai_class)
      expect(subject.result).to eq([1, player4])
    end

    it 'returns a tuple for a draw' do
      subject = described_class.new([player1, player5], ai_class)
      expect(subject.result).to eq([0, nil])
    end
  end

  describe '#switch_turns' do
    it 'starts with player 1 as current player' do
      subject = described_class.new([player1, player3], ai_class)
      expect(subject.current_player).to eq(player1)
    end
    it 'switches current players turn' do
      subject = described_class.new([player1, player3], ai_class)
      expect { subject.switch_turns }.to change { subject.current_player }.to eq(player3)
    end
  end
end
