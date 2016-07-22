require './lib/opponent'

describe Opponent do

  subject(:opponent) { described_class.new }

describe "#random_option" do

  it  "checks that choice is a random" do
  sign_in
  srand(0)
  expect(opponent.option).to eq "Rock"
  end

end

end
