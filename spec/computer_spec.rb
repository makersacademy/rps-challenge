require 'computer'

 describe Computer do
 subject(:skynet) { described_class.new }

 describe '#tool' do
  it 'picks a random tool' do
    expect(Computer::WEAPONS).to include skynet.tool
  end
 end
end
