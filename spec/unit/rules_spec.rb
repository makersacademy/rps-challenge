require 'rules'

describe Rules do
  it 'returns an array of the rules with winners' do
    rules = Rules.new
    expect(rules.list).to be_a(Array)
  end
end
