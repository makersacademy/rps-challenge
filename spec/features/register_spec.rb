feature 'Enter name' do
  scenario 'submit name to show name and  start playing game' do
    visit('/')
    fill_in(:player_1, with: 'Han')
    click_button 'PLAY'
    expect(page).to have_content("Han choose wisely")
  end
end
