require 'computer'

describe Computer do
  subject(:computer){described_class.new(:paper)}
  #
  it "generates random choice of rock paper scissor" do
    allow(computer).to receive(:choice).and_return(:paper)
       expect(computer.choice).to eq :paper
  end
end
