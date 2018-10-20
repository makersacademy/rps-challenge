require 'players'

describe Players do
  let(:players) { Players.new("Caitlin", "James") }
  it 'returns the name of the first player' do
    expect(players.name1).to eq "Caitlin"
  end
  it 'returns the name of the second player' do
    expect(players.name2).to eq "James"
  end

  it 'returns the move that the first player selected' do
    expect(players.move1=("rock")).to eq "rock"
  end

  it 'returns the move that the second player selected' do
    expect(players.move2=("scissors")).to eq "scissors"
  end
end
