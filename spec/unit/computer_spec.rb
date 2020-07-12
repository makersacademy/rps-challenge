require 'computer'

describe Computer do
  let(:computer) { Computer.new }

  it 'makes a random selection' do
    allow(computer).to receive(:sample) { 'paper' }
    expect(computer.selection).to eq 'paper'
  end
end
