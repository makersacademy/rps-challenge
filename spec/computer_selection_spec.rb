require './lib/computer_selection.rb'

describe ComputerSelection do
  context '#initialize' do
    it 'should initialize with an array of the three strings' do
      x = ComputerSelection.new
      expect(x.array_of_options).to eq ['Rock', 'Paper', 'Scissors']
    end
  end

  context '#computer_selection' do
    it 'should give an output of one of the three' do
      x = ComputerSelection.new
      expect(x.array_of_options).to include(x.computer_selection)
    end
  end


end
