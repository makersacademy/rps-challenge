feature 'Entering names' do
  scenario "Two players can enter their names" do
    submit_two_names("Anthony", "John")
    expect(page).to have_content("Anthony vs. John")
  end
end

feature "Choosing options" do
  scenario "Player_1 can choose an option first, followed by player_2" do
    submit_two_names("Anthony", "John")
    click_button "Rock"
    click_button "Scissors"
    expect(page).to have_content "Anthony picked Rock John picked Scissors"
  end
end

feature "Keeping score" do
  scenario "Player_1's score increases by 1 when they win" do
    submit_two_names("Anthony", "John")
    click_button "Rock"
    click_button "Scissors"
    expect(page).to have_content "Anthony: 1 John: 0"
  end
end
