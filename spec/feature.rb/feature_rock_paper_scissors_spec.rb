require 'player'
require 'computer'
require 'game'

feature '' do

  scenario 'player choses shapes' do
    player = Player.new
    player.choice 'rock'
    expect(player.shape).to eq 'rock'
  end

  scenario 'computer choses shapes' do
   computer = Computer.new
   allow(computer).to receive(:random_choice).and_return "rock"
   expect(computer.random_choice).to eq ("rock")
  end

  scenario 'player can  win' do
    player = Player.new
    computer = Computer.new
    game = Game.new(player, computer)
    player.choice "paper"
    allow(computer).to receive(:random_shape).and_return "rock"
    expect(game.result).to eq "YOU WON"
  end
end