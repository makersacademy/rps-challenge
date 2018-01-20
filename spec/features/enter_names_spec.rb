feature 'Enter names' do
  scenario 'Players can fill in their name on a form and see it on the screen' do
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'Hulk Hogan, please choose your weapon:'
  end
end
