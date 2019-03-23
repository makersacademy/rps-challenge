feature 'Player move' do
  scenario 'displayes the chosen move of the player' do
    visit('/')
    fill_in(:name, with: 'Yoyo')
    click_button 'Register'
    click_button 'Lets Play'
    find("option[value='Rock']").select_option
    click_button 'Confirm'
    expect(page).to have_content "Player chose 'Rock' as their move!"
  end
end