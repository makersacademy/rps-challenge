require 'player'

describe Player do

  it 'should respond to player_choice with one argument' do
    expect(subject).to respond_to(:player_choice).with(1).argument
  end

  it 'should only accept a valid choice as an argument to player_choice' do
  	expect{subject.player_choice("monkey")}.to raise_error "Not a valid selection!"
  end

end