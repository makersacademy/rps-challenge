feature 'checks that player chose a valid option' do
  scenario 'chosen option is included in game options' do
    play_computer
    sign_in_and_play

    click_button('Rock')
  end
end
