feature 'Log in' do
  scenario 'logs a user in' do
    sign_in
    expect(page).to have_content 'Welcome Ali! Choose Rock, Paper or Scissors!'
  end

  scenario 'logs a different user in' do
    visit('/login')
    fill_in :player_1_name, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Dave! Choose Rock, Paper or Scissors!'
  end
end
