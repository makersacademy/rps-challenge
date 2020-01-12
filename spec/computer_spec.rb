require_relative '../app.rb'

describe Computer do
  let(:computer) { described_class.new }

  it 'rocks papers or scissors' do
    expect(computer.move).to eq('Rock').or eq('Paper').or eq('Scissor')
  end
end
