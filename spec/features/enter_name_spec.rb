feature "Test name input" do
  scenario "puts name on screen" do
    visit('/')
    fill_in('player_1', with: 'Jim')
    click_on('Submit')
    expect(page).to have_content 'Jim'
  end
end
