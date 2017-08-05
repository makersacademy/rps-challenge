require 'game'

describe Game do
  subject(:game) {described_class.new(player1,player2)}
  let(:player1){double(:player,name: 'Bob', weapon:"Rock")}
  let(:player2){double(:computer,generate_weapon:"Scissors")}

  it 'Bob Wins' do
    expect(game.calc_result).to eq 'Bob Wins!'
  end

  it 'Computer wins' do
    expect(player2).to receive(:generate_weapon).and_return("Paper")
    expect(game.calc_result).to eq 'Computer Wins!'
  end

  it 'Draw' do
    expect(player2).to receive(:generate_weapon).and_return("Rock")
    expect(game.calc_result).to eq 'Draw'
  end

end
