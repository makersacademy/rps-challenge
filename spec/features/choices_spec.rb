feature 'player is presented the choices' do
  scenario 'chosen option is displayed on screen' do
    sign_in_and_play

    click_button('Rock')
    
    expect(page).to have_content("You chose Rock")
  end
end
