require 'sinatra'

feature "Player name" do
  scenario "Log name " do
  visit '/'
  fill_in :player_1, with: 'Sophie'
  click_button("Let's play!")
  expect(page).to have_content("Welcome,\n💡 Sophie 💡")
  end

  scenario "Move options" do
    visit '/play'
    expect(page).to have_content("What's your move?\n🤘 Rock 🤘\n📰 Paper 📰\n✂️ Scissors ✂️")
  end

  scenario "Player chooses rock, and the computer chooses paper." do
    visit '/play'
    allow_any_instance_of(Player).to receive(:move).and_return(:paper)
    click_button('Rock')
    expect(page).to have_content("Your opponent chose paper. You lose!")
  end
end