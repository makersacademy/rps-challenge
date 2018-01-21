# require "pry"

feature "Entering player name" do
  scenario "Player can enter a name at the start of the game" do
    sign_in_and_play
    expect(page).to have_content("Fran")
  end
end

feature "Making a choice" do
  scenario  "Player can choose a move" do
    sign_in_and_play
    choose("scissors")
    click_button("Play!")
    expect(page).to have_content("scissors")
  end
end

feature "Display players choices" do
  scenario "Player can see their move" do
    sign_in_and_play
    choose("scissors")
    click_button("Play!")
    expect(page).to have_content("You played: scissors")
  end

  scenario "Player can see ai's move" do
    sign_in_and_play
    choose("scissors")
    click_button("Play!")
    expect(page).to have_content("The computer played:")
  end
end

feature "Display the winner" do
  scenario "Player can see if they win" do
    sign_in_and_play
    choose("scissors")
    allow_any_instance_of(Array).to receive(:sample).and_return("paper")
    click_button("Play!")
    expect(page).to have_content("You win!")
  end
end

feature "Return to play page" do
  scenario "Player returns to previously page" do
    sign_in_and_play
    click_button("Play")
    click_button("Play again")
    expect(page).to have_content("Make your choice:")
  end
end
