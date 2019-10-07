feature 'choosing special version of RPS' do
  scenario 'choosing weapon' do
    sign_in_and_play_special
    expect(page).to have_content 'Pick one of the below:'
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
    expect(page).to have_content 'Spock'
    expect(page).to have_content 'Lizard'
  end
end 
