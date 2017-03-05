# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature "play" do

  scenario "player can chose paper" do
    sign_in_and_play
    click_button('paper')
    expect(page).to have_content('paper')
  end

  scenario "player can chose scissors" do
    sign_in_and_play
    click_button('scissors')
    expect(page).to have_content('scissors')
  end

  scenario "player can chose scissors" do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content('rock')
  end

  scenario "computer chooses an option" do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content("Computer's choice...")
  end

  scenario "a winner is declared" do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content("The winner is")
  end

  scenario "player can play again" do
    sign_in_and_play
    click_button('rock')
    click_link('Play again')
    expect(page).to have_content('So, Alex, ready to play?')
  end
end
