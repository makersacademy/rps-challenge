require 'rules'

describe Rules do

describe '#tradtional' do
  it 'returns a hash of rules' do
    expect(Rules.lizard).to be_a(Hash)
  end
end

end
