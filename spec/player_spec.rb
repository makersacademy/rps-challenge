require 'player'

describe Player do
  let(:player) { Player.new :name }

  it "has a name" do
    expect(player).to have_name
  end

end