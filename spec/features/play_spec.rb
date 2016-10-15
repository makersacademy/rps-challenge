feature "game screen displays" do
  scenario "Shows the game screen after registration" do
    get_to_play_screen
    expect(page).to have_content "Hello Maximus! You are playing against Computadora."
  end
end

context "player makes a choice of hand to play" do
  scenario "Allow a user to make only 1 selection of 'Rock'" do
    get_to_play_screen
    choose "Rock"
    expect(find_field("Paper")).not_to be_checked
    expect(find_field("Scissors")).not_to be_checked
  end
  
  scenario "Allow a user to make only 1 selection of 'Paper'" do
    get_to_play_screen
    choose "Paper"
    expect(find_field("Rock")).not_to be_checked
    expect(find_field("Scissors")).not_to be_checked
  end
  
  scenario "Allow a user to make only 1 selection of 'Scissors'" do
    get_to_play_screen
    choose "Scissors"
    expect(find_field("Paper")).not_to be_checked
    expect(find_field("Rock")).not_to be_checked
  end
  
end