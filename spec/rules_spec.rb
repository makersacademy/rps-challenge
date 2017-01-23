require 'rules'

describe Rules do
  it 'should initialize with an outcomes hash' do
    expect(Rules::OUTCOMES).to_not be_nil
  end
end
