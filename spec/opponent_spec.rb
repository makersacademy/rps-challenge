require 'opponent'

describe Opponent do

  it 'has a randomly selected weapon when initialized' do
    expect(subject.weapon).to eq('rock').or eq('paper').or eq('scissors')
  end

end