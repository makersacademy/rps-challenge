require 'user'

describe User do
  subject(:user) { described_class.new('Ana') }
  let(:option) { double :option }

  it 'has a name' do
    expect(user.name).to eq 'Ana'
  end

  it 'can select the option rock' do
    expect(user.choose(option)).to eq option
  end

end
