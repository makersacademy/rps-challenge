require 'player'

describe Player do
  let(:subject) { Player.new('Pikachu') }
  it 'picks rock' do
    expect(subject.choose_rock).to eq 'rock'
  end

  it 'picks paper' do
    expect(subject.choose_paper).to eq 'paper'
  end

  it 'picks scissors' do
    expect(subject.choose_scissors).to eq 'scissors'
  end
end