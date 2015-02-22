require 'computer'

describe 'Computer' do

  let(:computer) {Computer.new}

  it "has the name 'the Computer'" do
    expect(computer.name).to eq 'the Computer'
  end

  it 'has a weapon choice' do
    allow(computer).to receive(:weapon).and_return(:ROCK)
    expect(computer.weapon).to eq :ROCK
  end




end