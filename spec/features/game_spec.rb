feature 'Game' do

  scenario "new game greets player" do
    visit "/"
    fill_in "player_name", with: "Eve"
    click_on "Start Game!"
    expect(page).to have_content("Welcome, Eve!")
  end
end
