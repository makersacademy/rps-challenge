
require 'computer'


describe Computer do

  let(:computer) { described_class.new }

  it 'has a list' do
    expect(Computer::CHOICES).to include :Rock, :Paper, :Scissors
  end


  it 'should choose random move for computer' do
  expect(Computer::CHOICES).to include(computer.rand_choice)
  end

end
