require 'comp'

describe Comp do
  it 'computer chooses randomly' do
    expect(subject.choice).to eq("Rock").or eq("Paper").or eq("Scissors")
  end
end
