require 'computer.rb'

describe Computer do

  let(:computer) { described_class.new }
  it 'can be created' do
    expect(computer).to eq(computer)
  end

  it 'can pick a random weapon at choice' do
    allow(computer).to receive(:random_weapon).and_return(:paper)
    expect(computer.random_weapon).to eq(:paper)
  end
end
