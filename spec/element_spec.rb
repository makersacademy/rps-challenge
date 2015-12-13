require 'element'

describe Element do
  let(:element) { described_class.new 'rock' }
  it 'has been assigned a type at the initialization' do
    expect(element.type).to eq :rock
  end
end
