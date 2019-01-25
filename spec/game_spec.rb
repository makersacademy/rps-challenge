require 'game'

describe Game do

  let(:player_1)      { double(:player_1, name: "Player 1") }
  let(:player_2)      { double(:player_2, name: "Player 2") }
  let(:one_player_game) { described_class.new(player_1) }
  let(:two_player_game) { described_class.new(player_1, player_2) }

  it 'Accepts two players as arguments' do
    expect(described_class).to respond_to(:new).with(2).arguments
  end

  it 'Defaults to a 1 player game against the computer if only one player is passed on initialization' do
    expect(one_player_game.player_2.name).to eq "Computer"
  end

end
