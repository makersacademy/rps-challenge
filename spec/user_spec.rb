require 'user'

describe User do
  user = User.new("John")
  it 'returns the name' do
    expect(user.name).to eq("John")
  end

  it 'defaults points at 0' do
    expect(user.points).to eq(0)
  end
end