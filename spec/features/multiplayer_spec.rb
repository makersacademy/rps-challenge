feature 'multiplayer' do
  scenario "Player 2 can enter name" do
    visit ('/')
    fill_in :player_1_name, with: 'Halloumi'
    fill_in :player_2_name, with: 'Pizza'
    click_button 'Start game!'
    click_button 'Rock!'
    
    expect(page).to have_content 'Welcome, Pizza!'
  end

end