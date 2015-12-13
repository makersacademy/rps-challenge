require 'game'

describe Game do
  let(:human) { double :human, choice: :rock }
  let(:computer) { double :computer, choice: :scissors }
  let(:human_klass) { double :human_klass, new: human }
  let(:computer_klass) { double :computer_klass, new: computer }
  let(:session) { {name1: 'J. Bloggs', name2: 'botty', ai?: true } }
  
  subject(:game) { described_class.new(session, human_klass, computer_klass) }

  describe 'class methods' do
    describe '#self.games' do
      it 'can add game instances to games array and retreive them by id' do
        id = game.object_id
        Game.add(id, game)
        expect(Game.find(id)).to eq game
      end
    end
  end

  describe 'instance methods' do
    describe '#initialize' do
      it 'stores the players' do
        expect([game.player1, game.player2]).to eq [human, computer]
      end
    end

    describe '#winner' do
      let(:rocker) { double :rocker, choice: :rock }
      let(:paperteer) { double :paperteer, choice: :paper }
      let(:scissorcerer) { double :scissorcerer, choice: :scissors}
      let(:rocker_klass) { double :rocker_klass, new: rocker }
      let(:paperteer_klass) { double :paperteer_klass, new: paperteer }
      let(:scissorcerer_klass) { double :scissorcerer_klass, new: scissorcerer }

      it 'rock beats scissors' do
        game = Game.new(session, rocker_klass, scissorcerer_klass)
        expect(game.winner).to eq rocker
      end
      it 'paper beats rock' do
        game = Game.new(session, rocker_klass, paperteer_klass)
        expect(game.winner).to eq paperteer
      end

      it 'scissors beats paper' do
        game = Game.new(session, paperteer_klass, scissorcerer_klass)
        expect(game.winner).to eq scissorcerer
      end

      it 'rock draws against rock' do
        game = Game.new(session, rocker_klass, rocker_klass)
        expect(game.winner).to eq :draw
      end
      
      it 'paper draws against paper' do
        game = Game.new(session, paperteer_klass, paperteer_klass)
        expect(game.winner).to eq :draw
      end

      it 'scissors draws against scissors' do
        game = Game.new(session, scissorcerer_klass, scissorcerer_klass)
        expect(game.winner).to eq :draw
      end
    end
  end
end
