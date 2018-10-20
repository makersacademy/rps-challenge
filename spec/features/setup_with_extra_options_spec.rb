feature 'player signs in and selects extra options' do
  scenario 'extra options listed' do
    sign_in_and_play_extra
    expect(page).to have_content "Rock"
    expect(page).to have_content "Paper"
    expect(page).to have_content "Scissors"
    expect(page).to have_content "Lizard"
    expect(page).to have_content "Spock"
  end
end
