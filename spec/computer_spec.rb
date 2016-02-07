require 'computer'

describe Computer do
  subject(:computer) {described_class.new("AI")}

  it 'has a name by default' do
    expect(computer.name).to eq "AI"
  end

  it 'makes a choice a random choice in the game' do
    allow(computer).to receive(:choice).and_return(:Rock)
    expect(computer.choice).to eq (:Rock)
  end
end
