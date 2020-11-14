require 'player'

describe Player do
  subject { Player.new("dumb") }

  it "Correctly returns the name" do
    expect(subject.name).to eq("dumb")
  end

  it "Increases score when .you_won called" do
    expect { subject.you_won }.to change { subject.score }.by(1)
  end

end
