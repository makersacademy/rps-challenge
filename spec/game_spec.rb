require 'game'

RSpec.describe Game do 

  let(:game)     { Game.new(player, computer_opponent)                  }
  let(:player)   { double('player', :move => 'rock') }
  let(:computer_opponent) { double('computer_opponent')} 

  describe 'class initialization' do 

    it 'instance has hash to store defeat combinations' do 
      expected = {'rock' => 'scissors', 'paper' => 'rock', 'scissors' => 'paper'}
      expect(game.defeats).to eq expected
    end 

  end 

  describe 'finding a winner' do 

    it 'evaluates a draw' do 
      player.move
      allow(computer_opponent).to receive(:throw).and_return('rock')
      expect(game.winner?).to eq "it's a draw!"
    end
   
    it 'evalutes player win' do 
      player.move
      allow(computer_opponent).to receive(:throw).and_return('scissors')
      expect(game.winner?).to eq "you win!" 
    end 

   it 'evalutes player loss' do 
      player.move
      allow(computer_opponent).to receive(:throw).and_return('paper')
      expect(game.winner?).to eq "you lose!" 
    end  

  end 

end 