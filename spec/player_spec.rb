require 'player'
describe Player do
  it 'has a name' do
    subject.name = "Jade"
    expect(subject.name).to eq "Jade"
  end
end
