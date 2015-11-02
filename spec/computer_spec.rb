require 'computer'

describe Computer do
  subject(:computer){described_class.new(:paper)}
  #
  it "generates random choice of rock paper scissor" do
    allow(computer).to receive(:random_choice).and_return(:paper)
       expect(computer.random_choice).to eq :paper
  end
end
