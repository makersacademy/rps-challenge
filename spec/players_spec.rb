require 'players'

describe Players do

  let(:players) { Players.new("Caitlin", "James") }

  it 'name1 returns the name of the first player' do
    expect(players.name1).to eq "Caitlin"
  end
  it 'name2 returns the name of the second player' do
    expect(players.name2).to eq "James"
  end

  it 'move1 returns the move that the first player selected' do
    expect(players.move1 = "rock").to eq "rock"
  end

  it 'move2 returns the move that the second player selected' do
    expect(players.move2 = "scissors").to eq "scissors"
  end
end
