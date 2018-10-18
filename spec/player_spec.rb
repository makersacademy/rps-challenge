require 'player'

describe Player do

  subject {described_class.new(name: 'James')}

  it 'should create a player with given name' do
    expect(subject.name).to eq 'Todd'
  end

end
