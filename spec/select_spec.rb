require 'player'

describe Player do
  subject(:player) { described_class.new "Rocky" }
  
  it 'should change selected to rock' do
    expect(player.rock).to eq "rock"
  end

  it 'should change selected to paper' do
    expect(player.paper).to eq "paper"
  end

  it 'should change selected to scissors' do
    expect(player.scissors).to eq "scissors"
  end
end
