require 'cpu'

describe Cpu do
    it 'returns an instance of the Cpu class' do
        expect(subject).to be_an_instance_of(Cpu)
    end

    it 'has a an array of 3 items' do
        expect(subject.options).to include('rock', 'paper', 'scissors')
    end
end