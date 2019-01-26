feature 'Register name' do
  scenario 'A user register his name' do
    visit('/')
    fill_in :player, with: 'Raymond'
    click_button 'Submit'
    expect(page).to have_content "Raymond, let's start the game!"
  end
end
