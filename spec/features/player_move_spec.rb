feature 'Player move' do
  scenario 'displayes the chosen move of the player' do
    visit('/')
    fill_in(:name, with: 'Yoyo')
    click_button 'Register'
    click_button 'Lets Play'
    fill_in(:move, with: 'rock')
    click_button 'Confirm'
    expect(page).to have_content "Player chose 'rock' as their move!"
  end
end