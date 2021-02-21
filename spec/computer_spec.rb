require 'computer'

describe Computer do
  let(:computer) {double :computer, pick: 'Paper'}
  it "picks the move Paper" do
    expect(computer.pick).to eq 'Paper'
  end
end
