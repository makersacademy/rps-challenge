require 'game'

describe Game do

  let(:game) { Game.new }
  let(:player) { Player.new("Kevin") }

  it 'starts with no players' do
    expect(game.player).to eq(nil)
  end

  it 'should let players join' do
    game.player = player
    expect(game.player.name).to eq("Kevin")
  end

  it 'opponent should start with no choice' do
    expect(game.computer_choice).to eq(nil)
  end

end