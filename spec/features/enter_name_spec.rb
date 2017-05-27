feature '' do
  scenario '' do
    visit '/'
    fill_in :player_name, with: 'name'
    click_button 'Start Game'
    expect(page).to have_content 'Hello name!'
  end
end
