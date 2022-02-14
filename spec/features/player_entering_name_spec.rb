feature 'Testing name entering' do
  scenario 'Allow player to enter their name' do
    visit ('/')
    fill_in :player_name, with: 'Ali'
    click_button 'Submit'
    expect(page).to have_content 'Welcome to Rock Paper Scissors Ali'
  end
end