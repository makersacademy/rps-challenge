require 'computer'
describe Computer do
  it 'gets created with a default name of Computer' do
    computer = Computer.new
    expect(computer.name).to eq "Computer"
  end
  it 'selects a weapon rock randomly' do
    computer = Computer.new
    srand(2)
    expect(computer.send(:weapon)).to eq(:rock)
  end

  it 'selects a weapon paper randomly' do
    computer = Computer.new
    srand(1)
    expect(computer.send(:weapon)).to eq(:paper)
  end

  it 'selects a weapon scissors randomly' do
    computer = Computer.new
    srand(3)
    expect(computer.send(:weapon)).to eq(:scissors)
  end
end
