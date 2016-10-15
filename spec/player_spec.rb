require 'player.rb'

describe Player do
subject(:player_1) { described_class.new("Player_1") }

  it 'is initialized with no points' do
    expect(player_1.score).to eq 0
  end

  it 'holds a score which can be increased' do
    expect { player_1.receive_points }.to change { player_1.score }.by(1)
  end

  it 'keeps track of the player\'s most recent weapon choice' do
    expect(player_1.set_choice("Rock")).to eq player_1.choice
  end

end
