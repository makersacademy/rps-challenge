require 'player'

describe Player do
  subject (:tarun) { Player.new('Tarun') }

  it 'initializes with a name' do
    expect(subject.name).to eq 'Tarun'
  end

  it 'returns the action it is passed with' do
    expect(subject.action('rock')).to eq 'rock'
  end
end
