describe Computer do
  it 'exists' do
    computer = Computer.new
    expect(computer).to be_an_instance_of Computer
  end

  it "returns computer as it's name" do
    expect(subject.choice).to eq 'Computer'
  end

  it "returns rock, paper or scissors as it's choice" do
    expect(subject.choice).to be_in(['Rock','Paper','Scissors'])
  end
end
