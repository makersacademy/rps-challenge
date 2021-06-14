require 'random_pick'

describe Random_pick do
  it 'picks either rock, paper or scissors' do
    allow(subject).to receive(:cpu_turn) { 'Rock' }
    expect(subject.cpu_turn).to eq('Rock')
  end
end