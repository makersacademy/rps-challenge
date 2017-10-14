require 'game'

describe Game do

  let(:game) { described_class.new(player1 = "Tom") }
  it 'game has player1' do
    expect(game.player1).to eq("Tom")
  end

  it 'allows the player to choose rock, paper or scissors' do
    expect(game.player_choose_weapon(:rock)).to eq(:rock)
  end

  it 'allows the computer to choose a weapon' do
    expect(game.computer_choose_weapon).to satisfy { |weapon| weapon == :scissors || weapon == :rock || weapon == :paper }
  end



end
