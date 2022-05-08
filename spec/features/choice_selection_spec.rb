feature 'Choice selection' do
  scenario 'player chooses accepted selection (rock, paper or scissors)' do
    player_login
    fill_in :choice, with: "Rock"
    click_button "Game on!"
    expect(page).to have_content "Erlantz has choosen rock"
  end

  scenario 'player chooses something different from rock, paper or scissors' do
    player_login
    fill_in :choice, with: "Something"
    click_button "Game on!"
    expect(page).not_to have_content "Erlantz has choosen"
    expect(page).to have_content "Please choose rock, paper or scissors"
  end

end
