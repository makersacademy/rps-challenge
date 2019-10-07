feature "game play" do
  scenario "player clicks rock and defeats scissors" do
    sign_in
    srand(3)
    click_button('rock')
    expect(page).to have_content('You beat scissors with rock!')
  end

  scenario "player clicks paper and loses to scissors" do
    sign_in
    srand(3)
    click_button('paper')
    expect(page).to have_content('Paper was defeated by scissors')
  end

  scenario "player clicks scissors for a draw" do
    sign_in
    srand(3)
    click_button('scissors')
    expect(page).to have_content("It's a draw")
  end

  scenario "player clicks paper and somehow defeats rock" do
    sign_in
    srand(2)
    click_button('paper')
    expect(page).to have_content('You beat rock with paper!')
  end

  scenario "player clicks scissors and loses to rock" do
    sign_in
    srand(2)
    click_button('scissors')
    expect(page).to have_content('Scissors was defeated by rock')
  end

  scenario "player clicks scissors and defeats paper" do
    sign_in
    srand(1)
    click_button('scissors')
    expect(page).to have_content('You beat paper with scissors!')
  end

  scenario "player clicks rock and loses to paper" do
    sign_in
    srand(1)
    click_button('rock')
    expect(page).to have_content('Rock was defeated by paper')
  end

  scenario "player can see a running total of wins and losses" do
    sign_in
    3.times do
      srand(3)
      click_button('rock')
    end
    expect(page).to have_content('Wins: 3')
  end
end
