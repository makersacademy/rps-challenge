require 'user'

describe User do
  subject(:sel) { User.new('Sel') }

  describe '#user_name' do
    it 'returns the name' do
      expect(sel.user_name).to eq 'Sel'
    end
  end
end
