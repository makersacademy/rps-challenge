require 'computer_move'

describe ComputerMove do
  let(:cm) { described_class.new }

  context '#initialize' 
  it 'can pick one either Rock, Paper or Scissors' do
    expect(cm.computer_move).to eq("Rock").or(eq("Paper")).or(eq("Scissors"))
  end
end