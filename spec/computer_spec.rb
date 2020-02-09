require './lib/computer'

describe Computer do
    let(:subject) { Computer.new }

    it 'is a AI' do

    end

    it 'makes a choice' do
        allow(Computer).to receive(:make_choice).and_return("scissors")
        expect(Computer.make_choice).to include "scissors"
    end

end