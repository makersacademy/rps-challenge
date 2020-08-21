require 'computer'

describe Computer do
  it 'exists' do
    computer = Computer.new
    expect(computer).to be_an_instance_of Computer
  end

  it "returns computer as it's name" do
    expect(subject.name).to eq 'Computer'
  end

  it "returns rock, paper or scissors as it's choice" do
    expect('Rock,Paper,Scissors').to include(subject.choice)
  end
end
