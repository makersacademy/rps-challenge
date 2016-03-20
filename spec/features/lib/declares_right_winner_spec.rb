require 'weapon'
require 'player'

describe 'Declares the right winner' do
  p1 = Player.new(name: 'Darth Vadar')
  p2 = Player.new(name: 'Obi-Wan')
  game = Game.create(player1: p1, player2: p2)
  describe 'Weapon 1 is Rock' do
    before do
      p1.select_weapon('rock')
    end
    describe 'Rock vs Paper' do
      it 'Paper beats Rock' do
        p2.select_weapon('paper')
        expect(game.winner).to eq p2
      end
    end
    describe 'Rock vs Scissors' do
      it 'Rock beats scissor' do
        p2.select_weapon('scissors')
        expect(game.winner).to eq p1
      end
    end
    describe 'Rock vs Rock' do
      it 'it is a tie' do
        p2.select_weapon('rock')
        expect(game.winner).to eq nil
      end
    end
    describe 'Rock vs Spock' do
      it 'Spock beats Rock' do
        p2.select_weapon('spock')
        expect(game.winner).to eq p2
      end
    end
    describe 'Rock vs Lizard' do
      it 'Rock beats Lizard' do
        p2.select_weapon('lizard')
        expect(game.winner).to eq p1
      end
    end
  end
  describe 'Weapon 1 is Paper' do
    before do
      p1.select_weapon('paper')
    end
    describe 'Paper vs Paper' do
      it 'it is a tie' do
        p2.select_weapon('paper')
        expect(game.winner).to eq nil
      end
    end
    describe 'Paper vs Scissors' do
      it 'Scissor beats Paper' do
        p2.select_weapon('scissors')
        expect(game.winner).to eq p2
      end
    end
    describe 'Paper vs Spock' do
      it 'Paper disproves Spock' do
        p2.select_weapon('spock')
        expect(game.winner).to eq p1
      end
    end
    describe 'Paper vs Lizard' do
      it 'Lizard eats Paper' do
        p2.select_weapon('lizard')
        expect(game.winner).to eq p2
      end
    end
  end

  describe 'Weapon 1 is Scissors' do
    before do
      p1.select_weapon('scissors')
    end
    describe 'Scissors vs Scissors' do
      it 'it is a tie' do
        p2.select_weapon('scissors')
        expect(game.winner).to eq nil
      end
    end
    describe 'Scissors vs Spock' do
      it 'Spock smashes Scissors' do
        p2.select_weapon('spock')
        expect(game.winner).to eq p2
      end
    end
    describe 'Scissors vs Lizard' do
      it 'Scissors decapetates Lizard' do
        p2.select_weapon('lizard')
        expect(game.winner).to eq p1
      end
    end
  end

  describe 'Weapon 1 is Lizard' do
    before do
      p1.select_weapon('lizard')
    end
    describe 'Lizard vs Spock' do
      it 'Lizard poisons Spock' do
        p2.select_weapon('spock')
        expect(game.winner).to eq p1
      end
    end
    describe 'Lizard vs Lizard' do
      it 'it is a tie' do
        p2.select_weapon('lizard')
        expect(game.winner).to eq nil
      end
    end
  end

  describe 'Weapon 1 is Spock' do
    before do
      p1.select_weapon('spock')
    end
    describe 'Spock vs Spock' do
      it 'it is a tie' do
        p2.select_weapon('spock')
        expect(game.winner).to eq nil
      end
    end
  end
end
