feature 'Entering names' do
  scenario "Two players can enter their names" do
    multi_sign_in_and_play
    expect(page).to have_content("Hi Bob and Basil! Let's play Rock Paper Scissors!")
  end
end

feature "Choosing options" do
  scenario "Player_1 can choose an option first, followed by player_2" do
    multi_sign_in_and_play
    click_button "Rock"
    click_button "Scissors"
    expect(page).to have_content "Bob picked Rock Basil picked Scissors"
  end
end
