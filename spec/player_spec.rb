require 'player'

describe Player do

  let(:player1) { Player.new('Paul') }
  let(:player2) { Player.new('Computer') }

  it 'Can assign a player name' do
    expect(player1.name).to eq ('Paul')
  end

  it 'Has the facility to assign a human player a weapon' do
    player1.human_weapon=('Rock')
    expect(player1.human_weapon).to eq ('Rock')
  end

  it 'Has the faciclity to assign a computer player a random weapon' do
    player2 = double 'player2'
    allow(player2).to receive(:computer_weapon).and_return('Rock')
    expect(player2.computer_weapon).to eq('Rock')
  end
end
