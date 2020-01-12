require 'user'

describe User do
  it "is initialized with a name" do
    user = User.new("Marcello")
    expect(user.name).to eq "Marcello"
  end
end