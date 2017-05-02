require 'player'

describe Player do

  subject(:dwayne) { Player.new("Dwayne 'The Marketeer' Johnson") }
  let(:weapon) { double(:weapon) }

  it "has a name" do
    expect(subject.name).to eq("Dwayne 'The Marketeer' Johnson")
  end

  it "chooses a weapon" do
    dwayne.choose(weapon)
    expect(dwayne.weapon).to eq(weapon)
  end

end
