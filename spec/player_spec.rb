require 'player'

describe Player do
  let(:ralph) { described_class.new 'Ralph' }
  it 'accepts a name' do
    expect(ralph.name).to eq 'Ralph'
  end

  it 'accepts a choice' do
    ralph.choose('rock')
    expect(ralph.weapon).to eq 'rock'
  end
end
