require 'game'

feature "Playing RockPaperScissors" do
  scenario "user chooses to start a game" do
    register_and_play
    expect(page).to have_content "Make your move"
  end

  scenario "user can choose rock, paper, or scissors" do
    register_and_play
    choose('Rock')
    click_button "Play"
    expect(page).to have_content "Dave has chosen Rock"
  end

  # this test only passes 1 in 3 times. Stuck on how to mock the result on a feature test
  scenario "user is told what the game's selection is" do
    visit ('/')
    fill_in :user_name, with: 'Dave'
    click_button('Register')
    click_button('Play')
    choose('Rock')
    click_button "Play"
    expect(page).to have_content "Dave has chosen Rock"
    expect(page).to have_content "The game has chosen Scissors"
  end

  scenario "a winner is declared" do
    visit ('/')
    fill_in :user_name, with: 'Dave'
    click_button('Register')
    click_button('Play')
    choose('Rock')
    click_button "Play"
    expect(page).to have_content "Dave has chosen Rock"
    expect(page).to have_content "The game has chosen Scissors"
    expect(page).to have_content "You Win!"
  end
end
