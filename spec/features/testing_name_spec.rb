feature 'Testing name' do
  scenario 'player filled in name' do
    visit '/'
    fill_in :player, with: 'Paula'
    click_button("Start the game")
    expect(page).to have_content("Paula")
  end
end
