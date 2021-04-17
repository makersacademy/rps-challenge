feature 'welcome page' do
  scenario 'user can see a welcome page' do
    visit '/'
    expect(page).to have_content('Welcome to Rock, Paper, Scissors!')
  end

  scenario 'user can enter their name to begin game' do
    visit '/'
    fill_in('player_name', with: 'muhammad')
    click_button "Let's play"
    expect(page).to have_content("muhammad's turn")
  end
end
