feature 'choosing a move' do
  scenario 'players chooses rock' do
    visit('/')
    fill_in :player_name, with: 'Bob'
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content 'Bob chose Rock'
  end
end
