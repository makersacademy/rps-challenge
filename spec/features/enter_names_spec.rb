feature 'Enter names' do
  scenario 'players can fill in their name on a form and see it on the screen' do
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'Hulk Hogan vs. Captain Computer'
  end
end
