feature 'Start Game' do
  scenario 'choose an attack' do
    visit_submit_name
    expect(page).to have_content "Choose a move to play"
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario 'Show player vs computer move (Rock)' do
    visit_submit_name
    click_button 'Rock'
    expect(page).to have_content "You picked Rock"
  end

  scenario 'Show player vs computer move (Paper)' do
    visit_submit_name
    click_button 'Paper'
    expect(page).to have_content "You picked Paper"
  end

  scenario 'Show player vs computer move (Scissors)' do
    visit_submit_name
    click_button 'Scissors'
    expect(page).to have_content "You picked Scissors"
  end

  scenario 'Show the computer picked something' do
    visit_submit_name
    click_button 'Scissors'
    expect(page).to have_content "Computer picked"
  end

end