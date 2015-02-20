require 'marketer.rb'

describe 'Marketer' do

  let(:marketer) { Marketer.new }

  it 'should have an empty array as a name in the beginning' do
    expect(marketer.name).to eq []
  end

  it 'should be able to add a name to a new player' do
    marketer.add_name("makers")
    expect(marketer.name).to eq ["makers"]
  end

  it 'should have a choice between rock, paper and scissors' do
    expect(marketer.choice("scissors")).to eq "scissors"
  end

  it 'should have a choice between rock, paper and scissors' do
    expect(marketer.choice("paper")).to eq "paper"
  end

  it 'should have a choice between rock, paper and scissors' do
    expect(marketer.choice("rock")).to eq "rock"
  end

end