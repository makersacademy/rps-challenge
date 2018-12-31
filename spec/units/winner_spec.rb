require 'winner'

describe Winner do

  describe '#determine' do
    it 'should determine that rock beats scissors' do
      player1 = double(:player, name: "Caitlin", move: 'rock')
      player2 = double(:player, name: "James", move: 'scissors')
      players = [player1, player2]
      winner = Winner.new(players)
      expect(winner.determine).to eq winner.player1_won
    end

    it 'should determine that paper beats rock' do
      player1 = double(:player, name: "Caitlin", move: 'paper')
      player2 = double(:player, name: "James", move: 'rock')
      players = [player1, player2]
      winner = Winner.new(players)
      expect(winner.determine).to eq winner.player1_won
    end

    it 'should determine that scissors beats paper' do
      player1 = double(:player, name: "Caitlin", move: 'scissors')
      player2 = double(:player, name: "James", move: 'paper')
      players = [player1, player2]
      winner = Winner.new(players)
      expect(winner.determine).to eq winner.player1_won
    end

    it 'should determine that scissors beats lizard' do
      player1 = double(:player, name: "Caitlin", move: 'scissors')
      player2 = double(:player, name: "James", move: 'lizard')
      players = [player1, player2]
      winner = Winner.new(players)
      expect(winner.determine).to eq winner.player1_won
    end

    it 'should determine that rock beats lizard' do
      player1 = double(:player, name: "Caitlin", move: 'rock')
      player2 = double(:player, name: "James", move: 'lizard')
      players = [player1, player2]
      winner = Winner.new(players)
      expect(winner.determine).to eq winner.player1_won
    end

    it 'should determine that lizard beats paper' do
      player1 = double(:player, name: "Caitlin",  move: 'lizard')
      player2 = double(:player, name: "James", move: 'paper')
      players = [player1, player2]
      winner = Winner.new(players)
      expect(winner.determine).to eq winner.player1_won
    end

    it 'should determine that paper beats spock' do
      player1 = double(:player, name: "Caitlin", move: 'paper')
      player2 = double(:player, name: "James", move: 'spock')
      players = [player1, player2]
      winner = Winner.new(players)
      expect(winner.determine).to eq winner.player1_won
    end
    it 'should determine that lizard beats spock' do
      player1 = double(:player, name: "Caitlin",  move: 'lizard')
      player2 = double(:player, name: "James", move: 'spock')
      players = [player1, player2]
      winner = Winner.new(players)
      expect(winner.determine).to eq winner.player1_won
    end

    it 'should determine that spock beats rock' do
      player1 = double(:player, name: "Caitlin", move: 'spock')
      player2 = double(:player, name: "James", move: 'rock')
      players = [player1, player2]
      winner = Winner.new(players)
      expect(winner.determine).to eq winner.player1_won
    end

    it 'should determine that spock beats scissors' do
      player1 = double(:player, name: "Caitlin", move: 'spock')
      player2 = double(:player, name: "James", move: 'scissors')
      players = [player1, player2]
      winner = Winner.new(players)
      expect(winner.determine).to eq winner.player1_won
    end
  end
end
