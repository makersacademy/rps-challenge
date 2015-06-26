require 'player'

describe Player do

  let(:player) { Player.new }

  it 'can change from a list of options' do
    expect(player.options).to eq(['rock', 'paper','scissors','spock','lizard'])
  end

end