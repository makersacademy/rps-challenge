feature 'game display page' do
  scenario 'displays buttons for rock, paper, and scissors' do
    name_and_play
    expect(page).to have_content "George. Rock, Paper, or Scissors?"
    expect(page).to have_selector("input[type=submit][value='rock']")
    expect(page).to have_selector("input[type=submit][value='paper']")
    expect(page).to have_selector("input[type=submit][value='scissors']")
  end

  scenario 'displays your choice of R/P/S' do
    name_and_play
    click_button "rock"
    expect(page).to have_content "You chose rock"
  end

  scenario 'displays the computers choice of R/P/S' do
    name_and_play
    srand(1)
    click_button "rock"
    expect(page).to have_content "Computer chose paper"
  end
end
