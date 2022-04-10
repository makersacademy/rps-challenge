require_relative '../lib/game'

describe Game do
  context 'Game creates player object' do
    it '#initialize' do
      expect(subject.player1).to be_instance_of(Player)
    end
  end

    context '#declare_winner' do
      it 'responds to #declare_winner' do
        expect(subject).to respond_to(:declare_winner)
      end

      let(:player1) { double :player, name: 'Kieran', weapon: 'Scissors' }
      let(:player2) { double :player, name: 'Conor', weapon: 'Scissors' }

      it 'returns a draw' do  # done
        game = Game.new(player1, player2)
        expect(game.declare_winner).to eq(nil)
      end

      let(:player3) { double :player, name: 'Kieran', weapon: 'Scissors' }
      let(:player4) { double :player, name: 'Conor', weapon: 'Rock' }

      it 'returns winner player4 (Scissors vs Rock)' do
        game = Game.new(player3, player4)
        expect(game.declare_winner.name).to eq('Conor')
      end

      let(:player5) { double :player, name: 'Kieran', weapon: 'Scissors' }
      let(:player6) { double :player, name: 'Conor', weapon: 'Paper' }

      it 'returns winner player6 (Scissors vs Paper)' do
        game = Game.new(player5, player6)
        expect(game.declare_winner.name).to eq('Kieran')
      end

      let(:player7) { double :player, name: 'Kieran', weapon: 'Rock' }
      let(:player8) { double :player, name: 'Conor', weapon: 'Paper' }

      it 'returns winner player8 (Rock vs Paper)' do
        game = Game.new(player7, player8)
        expect(game.declare_winner.name).to eq('Conor')
      end

      let(:player9) { double :player, name: 'Kieran', weapon: 'Rock' }
      let(:player10) { double :player, name: 'Conor', weapon: 'Scissors' }

      it 'returns winner player9 (Rock vs Scissors)' do
        game = Game.new(player9, player10)
        expect(game.declare_winner.name).to eq('Kieran')
      end

      let(:player11) { double :player, name: 'Kieran', weapon: 'Paper' }
      let(:player12) { double :player, name: 'Conor', weapon: 'Scissors' }

      it 'returns winner player12 (Paper vs Scissors)' do
        game = Game.new(player11, player12)
        expect(game.declare_winner.name).to eq('Conor')
      end

      let(:player13) { double :player, name: 'Kieran', weapon: 'Paper' }
      let(:player14) { double :player, name: 'Conor', weapon: 'Rock' }

      it 'returns winner player13 (Paper vs Rock)' do
        game = Game.new(player13, player14)
        expect(game.declare_winner.name).to eq('Kieran')
      end
    end
end

