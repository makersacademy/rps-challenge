require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  it 'chooses either rock paper or scissors' do
    expect(Computer::OPTIONS).to include computer.choice
  end
end
