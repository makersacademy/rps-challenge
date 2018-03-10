feature 'Check that landing page works' do
  scenario 'User enters their name and it shows' do
    visit('/')
    fill_in 'player_name', with: 'Frank'
    click_button 'Submit'
    expect(page).to have_content 'Greetings Frank!'
  end
end
