require 'computer'

describe Computer do
  subject(:computer) {described_class.new}


  it 'chooses a random weapon' do
    allow(computer).to receive(:choice) {"rock"}
    expect(computer.choice).to eq("rock")
  end

end
