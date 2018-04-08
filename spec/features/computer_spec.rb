require 'computer'

describe Computer do
  subject{ described_class.new }

  it 'Should return the  default name' do
    expect(subject.name).to eq 'COMPUTER'
  end
end
