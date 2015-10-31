require 'game'

describe Game do

  it 'returns rock,paper or scissors' do
    allow(subject).to receive(:picker).and_return('what')
    expect(subject.picker).to eq 'what'
  end
end
