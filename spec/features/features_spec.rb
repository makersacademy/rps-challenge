require_relative 'web_helpers'

feature "Enter name" do
  scenario "Player name is displayed on screen" do
    sign_in_and_play
    expect(page).to have_content "Hi Spud!"
  end
end

feature "User choice" do
  scenario "Player is able to choose Rock, Paper or Scissors" do
    sign_in_and_play
    choose("choice_rock")
    expect(page).to have_content "You have chosen rock!"
  end
end

feature "Displays winner" do
  scenario "User wins" do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    sign_in_and_play
    choose("choice_rock")
    expect(page).to have_content "You win!"
  end
  scenario "Computer wins" do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    sign_in_and_play
    choose("choice_rock")
    expect(page).to have_content "Computer wins!"
  end
  scenario "Draw" do
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    sign_in_and_play
    choose("choice_rock")
    expect(page).to have_content "It's a draw!"
  end
end

feature "Play again" do
  scenario "After a game user can play again without re-entering name" do
    sign_in_and_play
    choose("choice_rock")
    click_button 'Play again!'
    expect(page).to have_content "Hi Spud!"
  end
end

feature "Go to start page" do
  scenario "After playing a game user can return to index" do
    sign_in_and_play
    choose("choice_rock")
    click_button 'Go to start page'
    expect(page).to have_content "Enter your name"
  end
end
