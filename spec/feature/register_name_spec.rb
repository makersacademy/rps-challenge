feature 'register name' do
  scenario 'registers player\'s name before playing an online game' do
    visit('/')
    fill_in :player_1_name, with: 'Tim'
    click_button :Enter
    expect(page).to have_content 'Tim'
  end
end
