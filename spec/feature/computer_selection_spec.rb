feature 'Computer makes choice' do
  scenario 'computer chooses Scissors' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "The Dark Web o.0 selected #{@computer}"
  end

  scenario 'computer chooses Spock' do
    sign_in_and_play
    click_button 'Spock'
    expect(page).to have_content "The Dark Web o.0 selected #{@computer}"
  end
end
# #{@computer} returns nil, is this possible to ever use? research to be done.
