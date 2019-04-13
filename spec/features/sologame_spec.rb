feature do
  scenario 'check can fill in name of player' do
    visit('/')
    fill_in :solo_player, with: "Willow"
    find_button('Play!').click
    expect(page).to have_content("Make your choice Willow")
  end

  scenario 'can lose to computer' do
    visit('/')
    fill_in :solo_player, with: "Willow"
    find_button('Play!').click
    click_button('scissors')
  end
end
