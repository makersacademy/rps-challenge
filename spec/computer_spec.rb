require 'computer'

describe Computer do
  let(:computer) { Computer.new }

  it 'returns its name as Computer' do
    expect(computer.name).to eq "Computer"
  end
end
