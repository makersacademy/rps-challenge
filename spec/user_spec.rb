require "user"

describe User do
  describe "New user"
  subject { User.new("name")}

  it "  creates user with name attribute" do
    expect(subject.name).to eq "name"
  end
end
