feature "Choose an option" do

  scenario "Expect to be able to choose Rock" do
    start_game
    click_on 'Rock'
    expect(page).to have_content 'You chose Rock'
  end

  scenario "Expect to be able to choose Paper" do
    start_game
    click_on 'Paper'
    expect(page).to have_content 'You chose Paper'
  end

  scenario "Expect to be able to choose Scissors" do
    start_game
    click_on 'Scissors'
    expect(page).to have_content 'You chose Scissors'
  end

end
