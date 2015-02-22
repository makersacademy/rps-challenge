require 'computer'

describe Computer do

  let(:computer){Computer.new}

  it "can take a turn" do
  allow(computer).to receive(:pick).and_return("Paper")
  expect(computer.pick).to eq "Paper"
  end

end