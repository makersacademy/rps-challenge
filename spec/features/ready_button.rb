feature 'button redirects' do
  scenario 'pressing button redirects to the game' do
    visit '/welcome'
    click_button "I'm Ready!"
    expect(page).to have_content "Please choose one of the options."
  end
end
