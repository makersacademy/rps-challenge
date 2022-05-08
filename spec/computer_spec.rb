require 'computer'

describe Computer do
  it 'can choose rock' do
    dbl_cpu = double("rock")
    allow(dbl_cpu).to receive(:weapon).and_return(:rock)
    srand(2)
    expect(subject.weapon).to eq(:rock)
  end

  it 'can choose paper' do
    dbl_cpu = double("paper")
    allow(dbl_cpu).to receive(:weapon).and_return(:paper)
    srand(1)
    expect(subject.weapon).to eq(:paper)
  end
  it 'can choose scissors' do
    dbl_cpu = double("scissors")
    allow(dbl_cpu).to receive(:weapon).and_return(:scissors)
    srand(3)
    expect(subject.weapon).to eq(:scissors)
  end
end
