require 'player'

describe Player do

  subject(:player) { described_class.new("Kat", :rock) }

  it 'should have a name and a choice' do
    expect(player).to have_attributes(name: "Kat", choice: :rock)
  end

  it 'should respond to the method select_choice' do
    expect(player).to respond_to(:select_choice).with(1).argument
  end

  it 'should change the choice variable when calling select_choice' do
    expect{ player.select_choice(:paper) }.to change{ player.choice }
  end

end
