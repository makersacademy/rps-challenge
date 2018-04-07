require 'comp'

describe 'Comp' do

  let (:comp) {Comp.new}

  describe "#computer_choice" do
    it "randomly picks rock paper or scissors" do
      allow(comp).to receive(:computer_choice).and_return(:rock)
    end
  end

end