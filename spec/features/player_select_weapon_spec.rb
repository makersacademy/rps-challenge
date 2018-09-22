# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'player can play "rock, paper and scissors"' do
  scenario "when I submit 'rock' I get a message I whether I have lost" do
    sign_and_play
    choose('rock')
    click_button('Play')
    visit('/choice')
    choose('paper')
    click_button('Play')
    expect(page).to have_content "Sorry - Bob you lost"
  end
end

feature 'player can play "rock, paper and scissors"' do
  scenario "when I submit 'rock' I get a message I whether I have won" do
    sign_and_play
    choose('scissors')
    click_button('Play')
    visit('/choice')
    choose('paper')
    click_button('Play')
    expect(page).to have_content "Congratulations - Bob you won"
  end
end
