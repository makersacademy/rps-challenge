require 'player'

describe Player do
  let(:computer) { double :computer, random_weapon: "scissors" }
  subject { described_class.new("Rubber Duck", "rock") }

  it "returns it's name" do
    expect(subject.name).to eq "Rubber Duck"
  end

  it "returns the chosen weapon" do
    expect(subject.chosen_weapon).to eq "rock"
  end

end
