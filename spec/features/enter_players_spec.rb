feature 'enter players name and go to play screen' do
  scenario 'show the current players name' do
    sign_in_and_play_standard
    expect(page).to have_content "Todd"
  end

  scenario 'show the available options' do
    sign_in_and_play_standard
    expect(page).to have_content "Rock"
    expect(page).to have_content "Paper"
    expect(page).to have_content "Scissors"
  end

end
