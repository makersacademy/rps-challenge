require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe 'defaults' do
    it 'selects any weapon upon intialization' do
      expect(computer.choice).not_to be_nil
    end
  end

end

