require 'capybara/rspec'

feature 'a player can play a game of rock paper scissors,' do

  scenario 'by signing up for a game with their name' do
    player = Player.new("Rob")
    expect(player.name).to eq "Rob"
  end

  scenario 'the player can make a move and win or loose' do
    player = Player.new("Rob")
    game = Game.new(1)
    computer = AutoPlayer.new("Holly")
    play_hash = { player1: player,
                  p1_move: :rock,
                  player2: computer,
                  p2_move: computer.move
                }
    expect(%w(Rob Holly)).to include game.result(play_hash)[:winner]
    expect(%w(Rob Holly)).to include game.result(play_hash)[:loser]
    expect([true, false]).to include game.result(play_hash)[:draw]
  end

end
