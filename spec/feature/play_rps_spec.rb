require 'capybara/rpsec'

feature 'a player can play a game of rock paper scissors,' do

  scenario 'by signing up for a game with their name' do
    player = Player.new("Rob")
    expect(player.name).to eq "Rob"
  end

  scenario 'the player can make a move and win or loose' do
    player = Player.new("Rob")
    game = Game.new(1)
    computer = Computer.new("AI Andy")
    play_hash = { player1: player,
                  p1_move: :rock,
                  player2: computer,
                  p2_move: computer.move
                }
    expect(game.play(play_hash)).to eq :win || :lose
  end

  scenario 'the player can win in a best of 3 by getting 2 or more wins' do
    player1 = Player.new("Rob")
    player2 = Player.new("Dave")
    game = Game.new(3)
    game.play(player1, :rock, player2, :paper)
    game.play(player1, :rock, player2, :scissors)
    game.play(player1, :scissors, player2, :paper)
    expect(game.winner).to eq "Rob"
    expect(game.rounds).to eq 3
  end

end
