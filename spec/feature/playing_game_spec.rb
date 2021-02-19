feature 'playing the game' do
  scenario 'seeing the options' do
    visit '/'
    fill_in :name, with: 'Frank'
    click_button 'Go!'
    click_button 'Play'
    expect(page).to have_content 'Rock Paper Scissors'
  end
end
