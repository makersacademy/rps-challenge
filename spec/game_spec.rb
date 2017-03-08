require 'game'

describe Game do
  subject(:game) {described_class.new(Player.new('Tim'), Player.new('Vicky'))}

  describe 'start' do
    it 'accepts two players with names' do
      expect(game.player1.name).to eq 'Tim'
    end
  end

  describe 'combinations' do

    context 'player 1 selects rock' do

      it 'it draws with rock' do
        game.play('Rock', 'Rock')
        expect(game.winner).to eq nil
      end

      it 'it wins against scissors' do
        game.play('Rock', 'Scissors')
        expect(game.winner.name).to eq "Tim"
      end

      it 'it loses against paper' do
        game.play('Rock', 'Paper')
        expect(game.winner.name).to eq "Vicky"
      end

    end

    context 'player 1 selects paper' do

      it 'it draws with paper' do
        game.play('Paper', 'Paper')
        expect(game.winner).to eq nil
      end

      it 'it wins against rock' do
        game.play('Paper', 'Rock')
        expect(game.winner.name).to eq "Tim"
      end

      it 'it loses against scissors' do
        game.play('Paper', 'Scissors')
        expect(game.winner.name).to eq "Vicky"
      end

    end

    context 'player 1 selects scissors' do

      it 'it draws with scissors' do
        game.play('Scissors', 'Scissors')
        expect(game.winner).to eq nil
      end

      it 'it wins against paper' do
        game.play('Scissors', 'Paper')
        expect(game.winner.name).to eq "Tim"
      end

      it 'it loses against rock' do
        game.play('Scissors', 'Rock')
        expect(game.winner.name).to eq "Vicky"
      end

    end
  end

  describe 'assign winner' do

    it 'winning increases player score' do
      player = Player.new('Susie')
      expect{game.assign_winner(player)}.to change{player.score}.by 5
    end

  end

end
