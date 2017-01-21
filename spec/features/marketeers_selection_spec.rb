

feature 'Marketeer plays a game' do
  scenario 'Marketeer sees options on the page'do
    sign_in_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end

feature 'Marketeer chooses an item' do
  scenario 'Marketeer chooses Rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You have chosen Rock'
  end
end
