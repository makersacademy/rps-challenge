# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'player can play "rock, paper and scissors"' do
  scenario "when I submit 'rock' I get a message whether I have won" do
    two_players_sign_in
    visit('/select_game')
    click_button('rps')
    choose('rock')
    click_button('Play')
    choose('scissors')
    click_button('Play')
    expect(page).to have_content "Bob has selected rock"
    expect(page).to have_content "Sam has selected scissors"
    expect(page).to have_content "Congratulations - Bob you won"
  end
end

feature 'player can play "rock, paper and scissors"' do
  scenario "when I submit 'rock' I get a message whether I have lost" do
    two_players_sign_in
    visit('/select_game')
    click_button('rps')
    choose('rock')
    click_button('Play')
    choose('paper')
    click_button('Play')
    expect(page).to have_content "Bob has selected rock"
    expect(page).to have_content "Sam has selected paper"
    expect(page).to have_content "Sorry - Bob you lost"
  end
end
