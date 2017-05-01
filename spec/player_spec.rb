require 'player'

describe Player do

  subject(:Dwayne) {Player.new("Dwayne 'The Marketeer' Johnson")}

  it "has a name" do
    expect(subject.name).to eq("Dwayne 'The Marketeer' Johnson")
  end

end
