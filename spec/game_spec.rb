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
    context 'user\'s weapon: rock' do
      context 'computer\'s weapon: rock' do
        it 'returns "It\'s a draw!"' do
          game_r_r = described_class.new('rock', 'rock')
          expect(game_r_r.result).to eq 'It\'s a draw!'
        end
      end

      context 'computer\'s weapon: paper' do
        it 'returns "Computer wins!"' do
          game_r_p = described_class.new('rock', 'paper')
          expect(game_r_p.result).to eq 'Computer wins!'
        end
      end

      context 'computer\'s weapon: scissors' do
        it 'returns "You win!"' do
          game_r_s = described_class.new('rock', 'scissors')
          expect(game_r_s.result).to eq 'You win!'
        end
      end
    end

    context 'user\'s weapon: paper' do
      context 'computer\'s weapon: rock' do
        it 'returns "You win!"' do
          game_p_r = described_class.new('paper', 'rock')
          expect(game_p_r.result).to eq 'You win!'
        end
      end

      context 'computer\'s weapon: paper' do
        it 'returns "It\'s a draw!"' do
          game_p_p = described_class.new('paper', 'paper')
          expect(game_p_p.result).to eq 'It\'s a draw!'
        end
      end

      context 'computer\'s weapon: scissors' do
        it 'returns "Computer wins!"' do
          game_p_s = described_class.new('paper', 'scissors')
          expect(game_p_s.result).to eq 'Computer wins!'
        end
      end
    end

    context 'user\'s weapon: scissors' do
      context 'computer\'s weapon: rock' do
        it 'returns "Computer wins!"' do
          game_s_r = described_class.new('scissors', 'rock')
          expect(game_s_r.result).to eq 'Computer wins!'
        end
      end

      context 'computer\'s weapon: paper' do
        it 'returns "You win!"' do
          game_s_p = described_class.new('scissors', 'paper')
          expect(game_s_p.result).to eq 'You win!'
        end
      end

      context 'computer\'s weapon: scissors' do
        it 'returns "It\'s a draw!"' do
          game_s_s = described_class.new('scissors', 'scissors')
          expect(game_s_s.result).to eq 'It\'s a draw!'
        end
      end
    end
  end
end
