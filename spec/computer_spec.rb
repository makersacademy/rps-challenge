require 'computer'

describe Computer do

let(:weapons) { [:rock, :paper, :scissors] }

  describe 'self.random_select' do
    it "returns one of three weapon choices" do
    [:Rock, :Paper, :Scissors].should include (Computer.random_select)
    end

  #   it "returns scissors" do
  #   allow_any_instance_of(weapons).to receive(:sample).and_return(scissors)
  #   expect(Computer.random_select).to eq 'scissors'
  # end

  end

end
