require 'user'

describe User do

  subject(:user) { described_class.new('Andy') }

  describe '#initialize' do
    it 'should set name attribute to argument passed into initialize' do
      expect(user.name).to eq 'Andy'
    end
  end
end
