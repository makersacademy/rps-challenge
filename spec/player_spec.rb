require 'player'

describe Player do
  subject(:player_1) { Player.new("Carmen") }

  context 'when initialized' do
    it "can display player's name" do
      expect(player_1.name).to eq "Carmen"
    end
  end

  it 'has a default value if not passed a name' do
    expect(Player.new.name).to eq "Computer"
  end
end
