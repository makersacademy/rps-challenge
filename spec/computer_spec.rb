require 'computer'

describe Computer do
  it "should return a random move" do
    allow(subject).to receive(:move) { "Rock" }
    expect(subject.move).to eq("Rock")
  end
end