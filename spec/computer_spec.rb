require 'computer.rb'

describe Computer do
  subject(:computer) { described_class.new }
  let(:computer) { double(:computer, weapon: move) }
  let(:move) { 'ROCK' }

  it 'choses its weapon' do
    expect(computer.weapon).to eq 'ROCK'
  end
end
