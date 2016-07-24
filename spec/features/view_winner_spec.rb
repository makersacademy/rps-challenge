feature 'View winner' do
  scenario 'You lose' do
    sign_in_and_play
    rock_choice
    click_button('View')
    expect(page).to have_content "Your opponent chose Paper!"
    expect(page).to have_content "You lose!"
  end
end
