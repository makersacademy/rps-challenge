require 'game'

describe Game do
  subject(:game) {described_class.new(player1,player2)}
  let(:player1){double(:player,name: 'Bob', weapon:"Rock")}
  let(:player2){double(:computer,generate_weapon:"Scissors")}

  it 'calculates result' do
    expect(game.calc_result).to eq 'Bob wins!'
  end
end
