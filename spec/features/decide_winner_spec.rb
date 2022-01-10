feature 'Decide a winner' do
  scenario 'rock crushes lizard' do 
    human_bob_babs_play
    click_button "ROCK"
    click_button "LIZARD"
    expect(page).to have_content "The results are in:\nCongratulations, Bob!"
  end

  scenario 'lizard poisons spock' do 
    human_bob_babs_play
    click_button "SPOCK"
    click_button "LIZARD"
    expect(page).to have_content "The results are in:\nCongratulations, Babs!"
  end
end
