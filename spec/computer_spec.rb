require 'computer'

describe Computer do

  let(:array) { double :array}

  xit 'can choose a random option' do
    allow(array).to receive(choices).and_return([:rock, :paper])
    computer = Computer.new(array)
    expect(computer.options).to include(computer.choose)
  end

end
