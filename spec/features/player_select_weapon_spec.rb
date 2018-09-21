# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'player can play "rock, paper and scissors"' do
  scenario "when I submit 'rock' I get a message I whether I have won" do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    sign_and_play
    choose('rock')
    click_button('Play')
    expect(page).to have_content "Congratulations - you won"
  end
end

feature 'player can play "rock, paper and scissors"' do
  scenario "when I submit 'rock' I get a message I whether I have lost" do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    sign_and_play
    choose('rock')
    click_button('Play')
    expect(page).to have_content "Sorry - you lost"
  end
end
