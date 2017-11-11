require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  it '.name return computer name' do
    expect(computer.name).to eq('Computer')
  end
end
