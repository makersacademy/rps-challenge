require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  it 'confirms the name "Robert the Robot"' do
    expect(computer.name).to(eq("Robert the Robot"))
  end

  it 'confirms a random weapon is selected by computer' do
    allow(Kernel).to receive(:rand).and_return(2)
    expect(computer.weapon).to(eq("Scissors"))
  end

end
