require 'user'

RSpec.describe User do
  subject(:user) { described_class.new }

  it 'returns user name' do
    manu = User.new('manu')
    expect(manu.name).to eq('manu')
  end
end
