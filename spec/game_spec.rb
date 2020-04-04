require 'weapon'

describe Weapon do

  let(:weapon) { described_class.new(:rock) }

  it 'initializes with a type' do
    expect(weapon).to respond_to (:type)    
  end
  
end
