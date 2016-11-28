require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  before do
    allow(Computer::OPTIONS).to receive(:sample).and_return(:paper)
  end

  it "should choose a random option" do
    expect(computer.play).to eq (:paper)
  end

  it "should save last move result" do
    computer.play
    expect(computer.move).to eq (:paper)
  end

end
