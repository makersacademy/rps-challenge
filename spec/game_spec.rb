require 'game'

describe Game do


  let(:player) { double :player }
  let(:game) { Game.new player }


  it 'respond to challenge' do
    expect(game).to respond_to(:challenge)
  end



end