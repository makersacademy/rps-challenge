require 'game'


describe Game do 
let(:player) {double :player}
let(:playerClass) {double :Player, new: player}

subject { Game.new(playerClass) }

  it 'creates player 1' do
    expect(subject.player1).to be player
  end

  it 'creates player 1' do
    expect(subject.player2).to be player
  end


end