require 'game'

describe Game do
  let(:user_weapon) { double :user_weapon }
  let(:computer_weapon) { double :computer_weapon }
  subject(:game) { described_class.new(:user_weapon, :computer_weapon) }

  describe '#user_weapon' do
    it 'returns the user\'s weapon' do
      expect(game.user_weapon).to eq :user_weapon
    end
  end

  describe '#computer_weapon' do
    it 'returns the computer\'s weapon' do
      expect(game.computer_weapon).to eq :computer_weapon
    end
  end

  describe '#result' do
    context 'user weapon: rock - computer weapon: rock' do
      xit 'returns the right result' do
        allow(game).to receive(:user_weapon).and_return('rock')
        allow(game).to receive(:computer_weapon).and_return('rock')
        expect(game.result).to eq 'It\'s a draw!'
      end
    end

    context 'user weapon: rock - computer weapon: paper' do
      xit 'returns the right result' do
        allow(game).to receive(:user_weapon).and_return('rock')
        allow(game).to receive(:computer_weapon).and_return('paper')
        expect(game.result).to eq 'Computer wins!'
      end
    end
  end
end
