require 'move'

describe Move do
    it 'initialises with an array of moves' do
        subject.instance_variable_set(:@moves, ['Rock', 'Paper', 'Scissors'])
        expect(subject.moves).to eq ['Rock', 'Paper', 'Scissors']
    end
end