require './lib/computer'

describe Computer do
  let(:subject) { Computer.new }

  it 'creates a new instance of computer' do
    expect(subject).to be_instance_of Computer
  end

  describe '#computer_choice' do

    it 'allows the computer to make a choice' do
      expect(subject).to respond_to(:computer_choice)
    end

    it 'allows the computer to make a choice' do
      expect(subject.computer_choice).to eq("Paper")
    end
  end
end 
