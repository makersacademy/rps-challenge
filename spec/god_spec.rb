require 'god'

describe God do

  describe "choice" do
    it {is_expected.to respond_to :choice}
  end
  it "should make different choices" do
    choice1 = subject.choice
    choice2 = subject.choice
    expect(choice1).not_to eq choice2
  end
end
