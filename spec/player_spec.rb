require 'player'

describe Player do
 subject(:player){described_class.new("Dave")}

  it '#name' do
    expect(player.name).to eq "Dave"
  end

  it '#choice' do
    expect(player.choose("Scissors")).to eq "Scissors"
  end
end
