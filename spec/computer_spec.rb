require 'computer'

describe Computer do

  subject(:computer) { described_class.new(:rock) }

  it 'should have a choice attribute' do
    expect(computer).to have_attributes(choice: :rock)
  end

  it 'should respond to the method select_choice' do
    expect(computer).to respond_to(:select_choice)
  end

  it 'should return a game choice based on chance' do
    allow(computer).to receive(:chance).and_return(2)
    expect(computer.select_choice).to eq(:paper)
  end

end
