require_relative '../app/lib/player'

describe Player do
  it "Stores parameters given on initialization" do
    player = Player.new(name: "Alfonso", choice: :Rock)
    expect(player).to have_attributes(:name => "Alfonso", :choice => :Rock)
  end
end
