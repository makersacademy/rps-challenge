require 'user'

describe User do
  user = User.new("John")
  it 'returns the name' do
    expect(user.name).to eq("John")
  end
end