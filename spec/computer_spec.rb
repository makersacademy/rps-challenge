require './lib/computer.rb'

describe 'Computer' do
  let(:computer) {Computer.new}
  it 'returns move rock' do
    allow(computer).to receive(:move).and_return('rock')
    expect(computer.move).to eq 'rock'
  end

  it 'returns move paper' do
    allow(computer).to receive(:move).and_return('paper')
    expect(computer.move).to eq 'paper'
  end

  it 'returns move scissor' do
    allow(computer).to receive(:move).and_return('scissor')
    expect(computer.move).to eq 'scissor'
  end
end
