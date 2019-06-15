feature 'playing a game' do
  scenario 'see rock paper scissors' do
    visit '/'
    fill_in 'player_1_name', with: 'Celia'
    click_button 'Submit'
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end
end
