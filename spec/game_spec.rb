require 'game'


describe Game do
  it 'contains the right moves' do
    expect(subject.options).to eq [:rock, :paper, :scissors]
 end
end 
