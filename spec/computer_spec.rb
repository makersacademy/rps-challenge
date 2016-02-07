require 'computer'

describe Computer do
  subject(:computer){described_class.new}

  it '#choice' do
    allow(computer).to receive(:choice) {"Scissors"}
    expect(computer.choice).to eq 'Scissors'
  end


  it '#name' do
    expect(computer.name).to eq 'The Computer'
  end

end