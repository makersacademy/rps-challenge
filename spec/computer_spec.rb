require 'computer'

describe Computer do
  it 'holds the weapons it can choose from' do
    expect(subject.move).to eq("Rock").or eq("Paper").or eq("Scissors")
  end
end
