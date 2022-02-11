require_relative '../lib/botplayer'

describe BotPlayer do

  subject(:bot_player) { described_class.new }

  it "has a weapon" do
    allow(bot_player).to receive(:weapon).and_return(:paper)
    expect(bot_player.weapon).to eq :paper
  end

  it "has a name" do
    expect(bot_player.name).to eq "Computer"
  end

end
