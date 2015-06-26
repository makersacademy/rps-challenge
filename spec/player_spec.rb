require './lib/player'

describe Player do

  let(:player) { Player.new 'Nicola' }

  it 'has a name' do
    expect(player.name).to eq 'Nicola'
  end

  it 'can choose rock paper or scissors' do
    expect(player.choose_rock_paper_or_scissors 'rock').to eq 'rock'
  end

end
