require 'computer'

describe Computer do

  let(:options) { double :options}

  it 'can choose a random option' do
    allow(options).to receive(:choices).and_return([:rock, :paper])
    computer = Computer.new(options)
    expect(computer.options).to include(computer.choose)
  end

end
