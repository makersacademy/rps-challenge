require 'object'

describe Object do
  subject(:object) {described_class.new}
  it 'selects random rock, paper or scissor' do
    allow(object).to receive(:weapon) { :rock }
    expect(object.weapon).to eq :rock
  end
end
