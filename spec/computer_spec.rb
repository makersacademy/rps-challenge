require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  
  it 'should return a stored random item' do
    expect(Computer::ITEMS).to include computer.pick
  end
end
