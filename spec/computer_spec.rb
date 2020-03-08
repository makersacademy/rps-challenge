require 'computer'
describe Computer do
  it 'will respond to the method make_choice and return ROCK' do
    allow(subject).to receive(:make_choice).and_return('ROCK')
    expect(subject.make_choice).to eq 'ROCK'
  end

  it 'will respond to the method make_choice and return PAPER' do
    allow(subject).to receive(:make_choice).and_return('PAPER')
    expect(subject.make_choice).to eq 'PAPER'
  end

  it 'will respond to the method make_choice and return SCISSORS' do
    allow(subject).to receive(:make_choice).and_return('SCISSORS')
    expect(subject.make_choice).to eq 'SCISSORS'
  end
end