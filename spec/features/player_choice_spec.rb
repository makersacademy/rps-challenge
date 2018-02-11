feature 'checks that player chose a valid option' do

  let(:player) { Player.new('Josu') }

  scenario 'chosen option is included in game options' do
    sign_in_and_play

    click_button('Rock')
  end
end
