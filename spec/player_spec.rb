require 'player'

describe Player do
  subject(:player) {described_class.new("Toby")}

  it 'knows its name' do
    expect(player.name).to eq ("Toby")
  end

  describe '#set_last_action' do
    it 'sets the last action made' do
    player.set_last_action("rock")
    expect(player.last_action).to eq "rock"
    end
  end
end
