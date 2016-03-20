feature 'Create new player' do

  scenario 'user enters name' do
    visit '/'
    fill_in :player, with: 'Sachin'
    click_button 'Start Game'
    expect(page).to have_text("Welcome Sachin!")
  end

end