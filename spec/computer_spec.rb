require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  it '.name return computer name' do
    expect(computer.name).to eq('Computer')
  end

  it '.score return a default value' do
    expect(computer.score).to eq(0)
  end

  it '#choice return Rock' do
    srand(0)
    expect(computer.choice).to eq('Rock')
  end
end
