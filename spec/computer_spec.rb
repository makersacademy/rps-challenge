require 'computer'

describe Computer do

  let(:array) { double :array}

# To have a look tomorrow
  xit 'can choose a random option' do
    allow(array).to receive(choices).and_return([:rock, :paper])
    allow_any_instance_of(Options).to receive(:choices).and_return([:rock, :paper])
    computer = Computer.new(array)
    expect(computer.options).to include(computer.choose)
  end

end
