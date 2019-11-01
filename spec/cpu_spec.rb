require 'cpu'

describe Cpu do
    it 'returns an instance of the Cpu class' do
        expect(subject).to be_an_instance_of(Cpu)
    end
end