feature 'Entering name' do
  scenario 'User can enter name and submit it' do
    visit '/'
    fill_in :name, with: 'Maja'
    click_button 'Submit and PLAY!'
    expect(page).to have_content "Welcome to the game, Maja! LET'S PLAY!!!"
  end
end