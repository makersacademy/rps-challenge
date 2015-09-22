require 'rpsls_rules'

describe RPSLS do
  it 'should contain outcomes' do
    expect(subject).to respond_to(:outcomes)
  end

  it 'should contain shape options' do
    expect(subject).to respond_to(:shapes)
  end
end
