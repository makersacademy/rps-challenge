require 'rules'

describe Rules do

describe '#tradtional' do
  it 'returns a hash of rules' do
    expect(Rules.traditional).to have_key('paper')
  end
end

describe '#spock' do
  it 'returns a hash of rules' do
    expect(Rules.spock).to have_key('spock')
  end
end


end
