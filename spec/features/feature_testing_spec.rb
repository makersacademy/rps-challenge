feature "test" do
  scenario "gets and remembers a player's name" do
    start_play
    expect(page).to have_content('Snowman VS Computer')
  end

  scenario "plays rock" do
    start_play
    click_button('Rock')
    expect(page).to have_content("Snowman's score: ")
  end

  scenario "plays scissors" do
    start_play
    click_button('Scissors')
    expect(page).to have_content("Snowman's score: ")
  end
  
  scenario "plays paper" do
    start_play
    click_button('Paper')
    expect(page).to have_content("Snowman's score: ")
  end
end
