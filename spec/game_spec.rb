require 'game'

describe Game do
  let(:game) { described_class.new(computer: 'rock', player: 'scissors') } 
  it 'calculates the winner' do
    expect(game.winner).to eq('Computer chose rock – you lose!')
  end
end