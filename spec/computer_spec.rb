require 'computer'
describe Computer do
  let(:computer) { described_class.new }

  it 'chooses rock, paper or scissor' do
    expect(computer.choose_rps).to eq('rock').or eq('paper').or eq('scissors')
  end
end
