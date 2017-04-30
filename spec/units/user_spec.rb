require 'user'

describe User do
  subject(:user){described_class.new('Ana')}

it 'has a name' do
  expect(user.name).to eq 'Ana'
end

end
