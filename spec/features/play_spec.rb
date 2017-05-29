feature 'playing RPS game' do
  scenario 'selecting attack method' do
    enter_name_and_play
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end
end
