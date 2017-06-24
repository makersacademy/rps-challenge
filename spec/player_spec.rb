

describe Player do

  let(:name) { :Maker }
  subject(:player) { described_class.new(name)}

  describe "attributes" do
    context "on init" do
      it {is_expected.to respond_to(:name)}
    end
  end
end
