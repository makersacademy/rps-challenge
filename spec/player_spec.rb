require 'player'

describe Player do
  subject = Player.new "player"

  it 'should respond to choice with an option' do
    expect(subject).to respond_to(:choice).with(1).argument
  end

  it 'should raise an error if an incorrect choice has been made' do
    expect{subject.choice "test"}.to raise_error "Not a valid option"
  end

end
