require 'game'

describe Game do

  describe "#play" do
    it 'Player wins when player choose rock and computer choose scissors' do
      human_player = double(name:'Joe',choice:'rock'.to_sym)
      computer_player = double(name:'Comp',choice:'scissors'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Joe wins!')
    end

    it 'Player wins when player choose rock and computer choose lizard' do
      human_player = double(name:'Joe',choice:'rock'.to_sym)
      computer_player = double(name:'Comp',choice:'lizard'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Joe wins!')
    end

    it 'Player wins when player choose paper and computer choose rock' do
      human_player = double(name:'Joe',choice:'paper'.to_sym)
      computer_player = double(name:'Comp',choice:'rock'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Joe wins!')
    end

    it 'Player wins when player choose paper and computer choose spock' do
      human_player = double(name:'Joe',choice:'paper'.to_sym)
      computer_player = double(name:'Comp',choice:'spock'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Joe wins!')
    end

    it 'Player wins when player choose scissors and computer choose paper' do
      human_player = double(name:'Joe',choice:'scissors'.to_sym)
      computer_player = double(name:'Comp',choice:'paper'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Joe wins!')
    end

    it 'Player wins when player choose scissors and computer choose lizard' do
      human_player = double(name:'Joe',choice:'scissors'.to_sym)
      computer_player = double(name:'Comp',choice:'lizard'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Joe wins!')
    end

    it 'Player wins when player choose lizard and computer choose paper' do
      human_player = double(name:'Joe',choice:'lizard'.to_sym)
      computer_player = double(name:'Comp',choice:'paper'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Joe wins!')
    end

    it 'Player wins when player choose lizard and computer choose spock' do
      human_player = double(name:'Joe',choice:'lizard'.to_sym)
      computer_player = double(name:'Comp',choice:'spock'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Joe wins!')
    end

    it 'Player wins when player choose spock and computer choose scissors' do
      human_player = double(name:'Joe',choice:'spock'.to_sym)
      computer_player = double(name:'Comp',choice:'scissors'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Joe wins!')
    end

    it 'Player wins when player choose spock and computer choose rock' do
      human_player = double(name:'Joe',choice:'spock'.to_sym)
      computer_player = double(name:'Comp',choice:'rock'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Joe wins!')
    end

    it 'End in a draw when both players choose rock' do
      human_player = double(name:'Joe',choice:'rock'.to_sym)
      computer_player = double(name:'Comp',choice:'rock'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Draw!')
    end

    it 'End in a draw when both players choose paper' do
      human_player = double(name:'Joe',choice:'paper'.to_sym)
      computer_player = double(name:'Comp',choice:'paper'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Draw!')
    end

    it 'End in a draw when both players choose scissors' do
      human_player = double(name:'Joe',choice:'scissors'.to_sym)
      computer_player = double(name:'Comp',choice:'scissors'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Draw!')
    end

    it 'End in a draw when both players choose lizard' do
      human_player = double(name:'Joe',choice:'lizard'.to_sym)
      computer_player = double(name:'Comp',choice:'lizard'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Draw!')
    end

    it 'End in a draw when both players choose spock' do
      human_player = double(name:'Joe',choice:'spock'.to_sym)
      computer_player = double(name:'Comp',choice:'spock'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Draw!')
    end

    it 'Computer wins when player choose rock and computer choose paper' do
      human_player = double(name:'Joe',choice:'rock'.to_sym)
      computer_player = double(name:'Comp',choice:'paper'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Comp wins!')
    end

    it 'Computer wins when player choose rock and computer choose spock' do
      human_player = double(name:'Joe',choice:'rock'.to_sym)
      computer_player = double(name:'Comp',choice:'spock'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Comp wins!')
    end

    it 'Computer wins when player choose paper and computer choose scissors' do
      human_player = double(name:'Joe',choice:'paper'.to_sym)
      computer_player = double(name:'Comp',choice:'scissors'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Comp wins!')
    end

    it 'Computer wins when player choose paper and computer choose lizard' do
      human_player = double(name:'Joe',choice:'paper'.to_sym)
      computer_player = double(name:'Comp',choice:'lizard'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Comp wins!')
    end

    it 'Computer wins when player choose scissors and computer choose rock' do
      human_player = double(name:'Joe',choice:'scissors'.to_sym)
      computer_player = double(name:'Comp',choice:'rock'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Comp wins!')
    end

    it 'Computer wins when player choose scissors and computer choose spock' do
      human_player = double(name:'Joe',choice:'scissors'.to_sym)
      computer_player = double(name:'Comp',choice:'spock'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Comp wins!')
    end

    it 'Computer wins when player choose lizard and computer choose scissors' do
      human_player = double(name:'Joe',choice:'lizard'.to_sym)
      computer_player = double(name:'Comp',choice:'scissors'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Comp wins!')
    end

    it 'Computer wins when player choose lizard and computer choose rock' do
      human_player = double(name:'Joe',choice:'lizard'.to_sym)
      computer_player = double(name:'Comp',choice:'rock'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Comp wins!')
    end

    it 'Computer wins when player choose spock and computer choose paper' do
      human_player = double(name:'Joe',choice:'spock'.to_sym)
      computer_player = double(name:'Comp',choice:'paper'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Comp wins!')
    end

    it 'Computer wins when player choose spock and computer choose lizard' do
      human_player = double(name:'Joe',choice:'spock'.to_sym)
      computer_player = double(name:'Comp',choice:'lizard'.to_sym)
      game = Game.new(human_player,computer_player)
      expect(game.result).to eq('Comp wins!')
    end
  end

end
