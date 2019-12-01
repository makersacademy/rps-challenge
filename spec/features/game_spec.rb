feature 'Game' do

  scenario "new game greets player" do
    visit "/"
    fill_in :player_name, with: "Eve"
    click_on "Start Game!"
    expect(page).to have_content("Welcome, Eve!")
  end

  scenario "can choose to play rock" do
    visit "/"
    fill_in :player_name, with: "Eve"
    click_on "Start Game!"
    expect(page).to have_button("ROCK")
  end

  scenario "can choose to play paper" do
    visit "/"
    fill_in :player_name, with: "Eve"
    click_on "Start Game!"
    expect(page).to have_button("PAPER")
  end

  scenario "can choose to play scissors" do
    visit "/"
    fill_in :player_name, with: "Eve"
    click_on "Start Game!"
    expect(page).to have_button("SCISSORS")
  end

end
