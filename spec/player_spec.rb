require 'player'

describe Player do
  subject(:player) {described_class.new("Roberto", "Human")}
  
  it 'returns player name' do
    expect(player.name).to eq "Roberto"
  end

  it 'returns player type' do
    expect(player.type).to eq "Human"
  end

  it 'assignes players choice to yellow-throat' do
    player.choose_yellow
    expect(player.choice).to eq "yellow-throat"
  end
  
  it 'assignes players choice to blue-throat' do
    player.choose_blue
    expect(player.choice).to eq "blue-throat"
  end

  it 'assignes players choice to orange-throat' do
    player.choose_orange
    expect(player.choice).to eq "orange-throat"
  end
end



