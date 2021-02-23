feature 'game' do

  scenario 'takes players move - rock' do
    sign_in_and_play_rps
    click_button "Rock"
    expect(page).to have_content "Pete chose Rock"
  end

  scenario 'takes players move - paper' do
    sign_in_and_play_rps
    click_button "Paper"
    expect(page).to have_content "Pete chose Paper"
  end

  scenario 'takes players move - scissors' do
    sign_in_and_play_rps
    click_button "Scissors"
    expect(page).to have_content "Pete chose Scissors"
  end

  scenario 'shows computers move' do
    sign_in_and_play_rps
    click_button "Rock"
    expect(page).to have_content "The computer chose "
  end

  scenario 'allows you to play again' do
    sign_in_and_play_rps
    click_button "Rock"
    click_button "Play again"
    expect(page).to have_content "Choose a move"
  end

end
