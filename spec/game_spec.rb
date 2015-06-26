require 'game'

describe Game do


  let(:player) { double :player }
  let(:game) { Game.new player }


  it 'respond to challenge' do
    expect(game).to respond_to(:challenge)
  end

  it 'can change from a list of options' do
    expect(game.options).to eq(['rock', 'paper','scissors','spock','lizard'])
  end





end