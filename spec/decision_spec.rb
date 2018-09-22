require './lib/decision'

describe Decision do
  subject(:decision) { described_class.new('Rock') }
  it "should store the players decision" do
    expect(decision.chosen).to eq 'Rock'
  end
end
