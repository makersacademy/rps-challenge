require_relative '../app/lib/player.rb'

describe Player do
  it "Stores parameters given on initialization" do
    player = Player.new(name: "Alfonso", selected: :Rock)
    expect(player).to have_attributes(:name => "Alfonso", :selected => :Rock)
  end
end
