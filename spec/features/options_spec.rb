feature 'game display page' do
  scenario 'displays buttons for rock, paper, and scissors' do
    name_and_play
    expect(page).to have_content "George. Rock, Paper, or Scissors?"
    expect(page).to have_selector("input[type=submit][value='Rock!']")
    expect(page).to have_selector("input[type=submit][value='Paper!']")
    expect(page).to have_selector("input[type=submit][value='Scissors!']")
  end

  scenario 'displays your choice of R/P/S' do
    name_and_play
    click_button "Rock"
    expect(page).to have_content "You chose Rock"
  end

  scenario 'displays the computers choice of R/P/S' do
    name_and_play
    srand(2)
    click_button "Rock"
    expect(page).to have_content "Computer chose Paper"
  end
end
