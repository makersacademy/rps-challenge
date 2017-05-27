feature 'a player can play a game of RPS' do
  scenario ' a player chooses their first hand' do
    register
    expect(page).to have_button "Rock"
    expect(page).to have_button "Scissors"
    expect(page).to have_button "Paper"
  end

  scenario 'a player chooses rock and sees their choice' do
    register
    click_button "Rock"
    expect(page).to have_content "You chose Rock"
  end

  scenario 'the opponent chooses rock and shows their choice' do
    register
    click_button "Rock"
    expect(page).to have_content "Your opponent chose Rock"
  end
end
