require_relative '../app.rb'

describe Computer do
  let(:computer) { described_class.new }

  it 'chooses rock, paper or scissor' do
    expect(computer.move).to eq('Rock').or eq('Paper').or eq('Scissor')
  end
end
