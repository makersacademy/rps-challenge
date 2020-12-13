require 'player'

describe Player do
  let(:name){ double :name }
  subject { described_class.new(name) }

  it 'should return the player name' do
  expect(subject.get_name).to eq name
  end


end