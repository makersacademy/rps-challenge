require 'rules'

describe Rules do

describe '#make_rules' do
  it 'returns a hash of rules' do
    expect(Rules.make_rules).to be_a(Hash)
  end
end

describe '#make_rules_2' do
  it 'returns a hash of rules' do
    expect(Rules.make_rules_2).to be_a(Hash)
  end
end

end
