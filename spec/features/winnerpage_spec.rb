xfeature do
  scenario 'check can fill in name of player' do
    visit('/')
    fill_in :solo_player, with: "Willow"
    find_button('Play!').click
    find_button('rock').click
    expect(page).to have_content("Willow : Computer")
  end
end

feature do
  scenario 'can play RPS against a friend' do
    visit('/')
    fill_in :player_one, with: "Willow"
    fill_in :player_two, with: "Tara"
    find_button('PvP!').click
    choose('choice', option: 'rock', visible: false)
    choose('p2_choice', option: 'paper', visible: false)
    find_button('Play!').click
    expect(page).to have_content("Willow wins!")
  end
end
