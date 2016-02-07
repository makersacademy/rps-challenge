require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  
  it 'can pick an option' do
    allow(computer).to receive(:choose) { "paper" }
    expect(computer.choose).to eq "paper"  
  end
end