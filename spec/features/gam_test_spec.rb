feature 'Playing rock, paper, scissors' do

  scenario 'Player 1 chooses Rock' do
    sign_in
    choose 'Rock'
    click_button "Submit"
    expect(page).to have_content "Ajay chose Rock"
  end

  scenario 'Player 1 chooses Paper' do
    sign_in
    choose 'Paper'
    click_button "Submit"
    expect(page).to have_content "Ajay chose Paper"
  end

  scenario 'Player 1 chooses Scissors' do
    sign_in
    choose 'Scissors'
    click_button "Submit"
    expect(page).to have_content "Ajay chose Scissors"
  end

end
