feature 'player is presented the choices' do
  scenario 'chosen option is displayed on screen' do
    play_computer
    sign_in_and_play

    click_button('Rock')
    
    expect(page).to have_content("Josu chose Rock")
  end
end
