feature 'play RockPaperScissors' do

  scenario 'user can select rock' do
    start_the_game
    expect(page).to have_button "Rock"
  end

  scenario 'user can select paper' do
    start_the_game
    expect(page).to have_button "Rock"
  end

  scenario 'user can select scissors' do
    start_the_game
    expect(page).to have_button "Rock"
  end
end
