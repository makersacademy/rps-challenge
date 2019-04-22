feature 'sign-in process' do
  scenario 'form is filled in by player' do
    sign_in_and_submit
    expect(page).to have_content "Welcome to RPS, Hannah!"
  end
  scenario 'pressing button redirects to the game' do
    visit '/welcome'
    click_button "I'm Ready!"
    expect(page).to have_content "Please choose one of the options."
  end
end
