feature 'playing RPS game' do
  scenario 'selecting attack method' do
    enter_name_and_play
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario 'player views their attack method in battle_ground' do
    enter_name_and_play
    click_button "Paper"
    expect(page).to have_content "You attacked with Paper"
  end
end
