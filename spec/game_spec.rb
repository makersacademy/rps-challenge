require 'game'
require 'player'

describe Game do
  subject(:game){ described_class.new(shaun) }
    let(:shaun) { double("Shaun") }

  it 'retrieves player' do
    expect(game.player_1).to eq shaun
  end

  it "returns player's name" do
    expect(game.player_1.name).to eq "Shaun"
  end

end