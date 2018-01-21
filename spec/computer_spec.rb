require './lib/computer.rb'

describe Computer do
  subject(:computer) {described_class.new }
  it 'returns the name of computer' do
    expect(computer.name).to eq('Computer')
  end
end
