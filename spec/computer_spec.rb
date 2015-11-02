require 'computer'

describe Computer do

  it 'can select a rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    computer = Computer.weapon
    expect(computer).to eq(:rock)
  end

  it 'can select a scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    computer = Computer.weapon
    expect(computer).to eq(:scissors)
  end

  it 'can select a paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    computer = Computer.weapon
    expect(computer).to eq(:paper)
  end
end
