require 'computer'

describe Computer do
  subject(:computer){described_class.new(:paper)}
  #
  it "generates random selection of rock paper scissor" do
    allow(computer).to receive(:random_selection).and_return(:paper)
       expect(computer.random_selection).to eq :paper
  end
end
