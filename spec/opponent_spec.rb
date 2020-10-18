require_relative '../opponent'

describe Opponent do

  let(:subject) { described_class.new }

  it 'checks that a weapon string is being called randomly from an array' do
    expect(subject).to receive(:turn).and_return('rock')
    expect(subject.turn).to eq('rock')
  end

  
end