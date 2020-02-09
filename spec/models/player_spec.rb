require './app/models/player'

describe Player do

  subject { Player.new('test') }

  it 'expect Player.new(test) to result in Player.name = test' do
    expect(subject.name).to eq('test')
  end

end
