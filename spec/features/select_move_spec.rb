feature 'Select move' do
  scenario 'User select move' do
    sign_in_and_play
    click_button "Scissors"
    expect(page).not_to have_content "Dave vs. Computer Game"
    expect(page).to have_content "You selected\nScissors"
  end

  scenario 'User select move' do
    sign_in_and_play
    click_button "Rock"
    expect(page).not_to have_content "Dave vs. Computer Game"
    expect(page).to have_content "You selected\nRock"
  end

  scenario 'User select move' do
    sign_in_and_play
    click_button "Paper"
    expect(page).not_to have_content "Dave vs. Computer Game"
    expect(page).to have_content "You selected\nPaper"
  end
end
