feature 'Play page' do
  scenario 'shows the available options' do
    visit '/play'

    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'can choose Rock as your weapon' do
    visit '/play'
    click_button 'Rock'

    expect(page).to have_content "You have selected Rock!"
  end
end
