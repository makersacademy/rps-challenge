feature 'rps - result anouncement' do
  scenario 'show each player choice' do
    visit('/')
    click_button('one_player')
    visit('/one_player')
    fill_in('player_1_name', with: 'Sandy')
    click_button('Submit')
    visit('/one_player/choice')
    click_button('Rock')
    expect(page).to have_content('Sandy played Rock')
    expect(page).to have_content('Computer played Rock')
  end
end
