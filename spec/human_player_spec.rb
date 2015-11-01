require 'human_player'

describe Player do
  let(:player1) {Player.new(:p1)}

  it 'initialises player with a name' do
    expect(player1.name).to eq :p1
  end

  it 'allows player to select rock' do
    expect(player1.rock).to eq "rock"
  end

  it 'allows player to select paper' do
    expect(player1.paper).to eq "paper"
  end

  it 'allows player to select scissors' do
    expect(player1.scissors).to eq "scissors"
  end

end
