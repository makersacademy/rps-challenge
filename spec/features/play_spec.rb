feature "play rock papers scissors" do
  scenario "the user is prompted for a move" do
    sign_in_and_play
    expect(page).to have_content "Select one of Rock, Paper or Scissors"
  end

  scenario "the user can select Rock" do
    sign_in_and_play
    expect(page).to have_css 'input[value=Rock]'
  end

  scenario "the user can select Paper" do
    sign_in_and_play
    expect(page).to have_css 'input[value=Paper]'
  end

  scenario "the user can select Scissors" do
    sign_in_and_play
    expect(page).to have_css 'input[value=Scissors]'
  end
end
