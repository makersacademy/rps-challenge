require 'capybara/rspec'

feature 'a player can play a game of rock paper scissors,' do

  scenario 'by signing up for a game with their name' do
    player = Player.new("Rob")
    expect(player.name).to eq "Rob"
  end

  scenario 'the player can make a move and win or loose' do
    player = Player.new("Rob")
    game = Game.new(1)
    computer = AutoPlayer.new("AI Andy")
    play_hash = { player1: player,
                  p1_move: :rock,
                  player2: computer,
                  p2_move: computer.move
                }
    expect([:win, :lose, :draw]).to include game.play(play_hash)
  end

  scenario 'the player can win in a best of 3 by getting 2 or more wins' do
    rob = Player.new("Rob")
    dave = Player.new("Dave")
    game = Game.new(3)
    game.play(player1: rob, p1_move: :rock, player2: dave, p2_move: :paper)
    game.play(player1: rob, p1_move: :rock, player2: dave, p2_move: :scissors)
    game.play(player1: rob, p1_move: :scissors, player2: dave, p2_move: :paper)
    expect(game.winner).to eq "Rob"
    expect(game.rounds_played).to eq 3
  end

end
