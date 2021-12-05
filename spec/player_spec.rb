require_relative '../app/lib/player'

describe Player do
  before do
    @player = Player.new(name: "Alfonso", choice: :Rock)
  end

  it "Stores parameters given on initialization" do
    expect(@player).to have_attributes(:name => "Alfonso", :choice => :Rock)
  end

  it "returns player name" do
    expect(@player.name).to eq "Alfonso"
  end

  it "returns player RPS choice" do
    expect(@player.choice).to eq :Rock
  end
end
