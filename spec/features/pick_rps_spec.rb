feature 'Pick Rock/Paper/Scissors' do
  scenario 'pick rock/paper/scissors' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Bella picked Rock'
  end
end
