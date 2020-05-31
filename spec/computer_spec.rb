require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  
  it 'should return a random rps move' do
    allow(computer).to receive(:computers_turn) { 'Paper' }
    expect(computer.computers_turn).to eq 'Paper'
  end

end