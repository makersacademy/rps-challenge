require 'player'

describe Player do

subject(:david) {described_class.new('David')}

describe '#name' do
  it 'returns its name' do
    expect(david.name).to eq 'David'
   end
  end

end
