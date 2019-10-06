require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  it 'chooses a ramdon move' do
    allow(computer).to receive(:move).and_return('Rock')
  end
end
