require 'game'

describe Game do
  it 'initializes a game with one player' do
    player1 = Player.new("Ray")
    game = Game.new(player1, nil)
    expect(game.player1).to eq player1
  end

  it 'initializes a game with two players' do
    player1 = Player.new("Ray")
    player2 = Player.new("Computer")
    game = Game.new(player1, player2)
    expect(game.player1).to eq player1
    expect(game.player2).to eq player2
  end

  it 'initializes a game with one player and one computer' do
    player1 = Player.new("Ray")
    player2 = Computer.new
    game = Game.new(player1, player2)
    expect(game.player1.name).to eq "Ray"
    expect(game.player2.name).to eq "The Computer"
  end

  it "evaluates who has won the game" do
    player1 = Player.new("Ray", "Rock")
    player2 = Computer.new
    game = Game.new(player1, player2)
    allow(player2).to receive(:random_move).and_return("Scissors")
    player2.move = player2.random_move
    game.evaluate(player1, player2)
    expect(game.player2.move).to eq("Scissors")
  end

end
