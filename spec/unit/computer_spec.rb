require 'computer'

describe Computer do
  let(:computer) { Computer.new('computer') }

  it 'makes a random selection' do
    expect(computer.selection(1)).to eq 'paper'
  end
end
