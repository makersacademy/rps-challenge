require 'computer'

describe Computer do
  let(:computer) { Computer.new }

  it 'makes a random selection' do
    expect(computer.selection(1)).to eq 'paper'
  end
end
