describe Computer do 

  let(:computer)  { described_class.new }

  it 'responds to #computer_choice' do
    expect(computer).to respond_to(:computer_choice)
  end

  it 'returns rock, paper or scissors' do
    expect(subject).to receive(:computer_choice).and_return('Rock')
    expect(subject.print_choice).to eq 'Rock'  
  end
    
end
