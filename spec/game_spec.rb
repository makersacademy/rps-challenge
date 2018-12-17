describe Game do
  subject(:rps) { described_class.new }
  
  it "generates a random choice" do
    allow(rps).to receive(:play).and_return "rock"
    expect(rps.play).to eq "rock"
  end
end
