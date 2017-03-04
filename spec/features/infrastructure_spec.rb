feature 'Enter names' do
  scenario 'Entering names' do
    player_1 = 'Ryan'
    visit '/'
    fill_in(:player_1, with: player_1)
    click_button('Submit')
    expect(page).to have_content "#{player_1}'s hand on deck"
  end
end
