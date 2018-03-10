feature 'adding player name' do

  scenario 'visiting name entering page' do
    visit('/')
    expect(page).to have_content "Sign in to play"
  end
  scenario 'entering name' do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    click_button 'Play!'
    expect(page).to have_content "Dave's turn!"
  end
end
