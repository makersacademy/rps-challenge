require 'computer'

describe Computer do

let(:rock) { :rock }
let(:paper) { :paper }
let(:scissors) { :scissors }

  describe 'self.random_select' do

    it "returns rock" do
    allow(Computer).to receive(:random_select).and_return(rock)
    expect(Computer.random_select).to eq rock
  end

    it "returns paper" do
    allow(Computer).to receive(:random_select).and_return(paper)
    expect(Computer.random_select).to eq paper
  end

    it "returns scissors" do
    allow(Computer).to receive(:random_select).and_return(scissors)
    expect(Computer.random_select).to eq scissors
    end
  end

end
