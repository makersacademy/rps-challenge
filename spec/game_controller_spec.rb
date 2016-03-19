require 'game_controller'

describe GameController do

  describe '#choose_winner' do

    it 'can return true if an attack wins' do
      expect(described_class.choose_winner :paper , :rock).to be true
    end

    it 'can return false if a defense wins' do
      expect(described_class.choose_winner :rock , :paper).to be false
    end

  end

end
