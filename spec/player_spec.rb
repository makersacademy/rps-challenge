require 'player'

describe Player do

  subject(:player) {described_class.new("Chris")}

  it 'should be initialized with a name' do
    expect(player.name).to eq "Chris"
  end

  it 'can make choose rock' do
    player.make_choice(:rock)
    expect(player.choice_index).to eq 0
  end

  it 'can choose scissors' do
    player.make_choice(:scissors)
    expect(player.choice_index).to eq 2
  end




end
