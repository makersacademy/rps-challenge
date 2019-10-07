require "human.rb"

describe Human do

  subject(:human) { described_class.new("John") }

  it 'has a name' do
    expect(human.name).to eq "John"
  end

end
