require_relative '../app/models/computer'

describe 'Computer' do 
  let(:computer){Computer.new}

  it 'can return an option' do 
    allow(computer).to receive(:selection).and_return(:rock, :paper, :scissors)
    expect(computer.selection).to eq(:rock)
    expect(computer.selection).to eq(:paper)
    expect(computer.selection).to eq(:scissors)
  end  

end  