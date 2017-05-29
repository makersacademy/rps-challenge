require 'game'

describe Game do
  subject(:game) { described_class.new(player) }

  it 'is initialised with an instance of Player class' do
    player = Player.new("name")
    game = Game.new(player)
    expect(game.player.name).to eq 'name'
  end

  it 'initialises with an instance variable, @choice' do
    player = Player.new("name")
    game = Game.new(player)
    expect(game.choice).to eq []
  end

  it 'can pick a weapon and add it to @computer_choice' do
    player = Player.new("name")
    game = Game.new(player)
    game.pick_opposing_weapon
    expect(game.computer_choice.count).to eq 1
  end

  it 'can reset weapon choices' do
    player = Player.new("name")
    game = Game.new(player)
    game.pick_opposing_weapon
    game.reset_game
    expect(game.computer_choice).to eq []
  end

  it 'can report whether a game ended in a draw' do
    player = Player.new("name")
    game = Game.new(player)
    game.choice << "Scissors"
    game.computer_choice << "Scissors"
    expect(game.draw?).to eq true
    game.reset_game
    game.choice << "Rock"
    game.computer_choice << "Scissors"
    expect(game.draw?).to eq false
  end

  it 'can report if a game was won' do
    player = Player.new("name")
    game = Game.new(player)
    game.choice << "Paper"
    game.computer_choice << "Rock"
    expect(game.win?).to eq true
  end

  it 'can report if a game was lost' do
    player = Player.new("name")
    game = Game.new(player)
    game.choice << "Paper"
    game.computer_choice << "Scissors"
    expect(game.lose?).to eq true
  end

end
