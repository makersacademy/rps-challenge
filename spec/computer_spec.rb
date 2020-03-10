require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  it "should store the computer's move" do
    expect(computer.random_move).to eq computer.move
  end

end
