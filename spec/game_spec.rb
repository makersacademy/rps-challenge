require 'game'

describe Game do

  let(:game) { Game.new }
  let(:player) { Player.new("Kevin") }

  it 'starts with no players' do
    expect(game.player).to eq(nil)
  end

  it 'should let a player join' do
    game.player = player
    expect(game.player.name).to eq("Kevin")
  end

  it 'computer should start with no choice' do
    expect(game.computer_choice).to eq(nil)
  end

  it 'should randomly choose the computer\'s choice' do
    expect(game.choose_randomly).to satisfy{|m| ["rock", "paper", "scissors"].include?(m)}
  end

  it 'should start with no winner' do
    expect(game.winner).to eq(nil)
  end

  it 'should know who wins the game' do
    game.player = player
    game.player.choice = "rock"
    game.result
    expect(game.winner).not_to eq nil
  end
end