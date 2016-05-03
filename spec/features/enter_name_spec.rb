feature 'Entering a name' do
  scenario 'Submit user\'s name via a form' do
    sign_in_and_play
    expect(page).to have_content("Welcome Kojak!")
  end
end