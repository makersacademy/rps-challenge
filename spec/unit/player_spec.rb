require 'player'

describe Player do
  it 'responds to a name' do
    expect(subject).respond_to?(:name)
  end
end