require 'battle'

describe Battle do

  subject(:battle) { Battle.new(joe, drago)}

  let(:player)        { double('Joe') }
  let(:drago)      { double('Drago') }

  context '#initialize' do
    it 'allows the battle to include the player and Drago' do
      expect(battle.players).to include 'Joe', 'Drago'
    end
  end

  describe 'comparing Player and Drago choices' do

    # it 'returns a winning statement if player wins' do
    # end
    #
    # it 'returns a drawing statement if choices are the same' do
    # end
    #
    # it 'returns a losing statement if player loses' do
    # end

  end
end
