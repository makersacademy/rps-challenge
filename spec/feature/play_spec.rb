# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature "play" do

  scenario "player can chose paper" do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content('Paper')
  end

  scenario "player can chose scissors" do
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content('Scissors')
  end

  scenario "player can chose scissors" do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('Rock')
  end

  scenario "computer chooses an option" do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content("Computer's choice:")
  end

  scenario "a winner is declared" do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content("the winner!")
  end
end
