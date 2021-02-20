require 'game'

describe RockPaperScissors do
    subject(:subject) { RockPaperScissors.new('Joanna') }

it 'should have a choice of either rock, paper or scissors' do
    allow(subject).to receive(:choice) { 'Paper'}
    expect(subject.choice).to eq 'Paper'
end
    
it 'should have a name' do
expect(subject.name).to eq 'Joanna'
end

end
