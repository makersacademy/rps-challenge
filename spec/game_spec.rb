describe Rps do
  subject(:rps) { described_class.new }

  it "returns rock" do
    allow(rps).to receive(:play).and_return "rock"
    expect(rps.play).to eq "rock"
  end

end
