require 'player'

describe Player do
  subject { Player.new("Alex") }

  it 'shows the player name' do
    expect(subject.name).to eq("Alex")
  end
end
