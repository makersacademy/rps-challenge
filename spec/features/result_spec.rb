feature 'Confirm' do
  scenario 'Weapon is chosen and confirmed on screen' do
    sign_in_and_play
    rock_chosen
    click_button('See result')
    expect(page).to have_content 'You win!'
  end
end
