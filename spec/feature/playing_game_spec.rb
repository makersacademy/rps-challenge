feature 'playing the game' do
  scenario 'seeing the options' do
    visit '/'
    fill_in :name, with: 'Frank'
    click_button 'Go!'
    click_button 'Play'
    expect(page).to have_content 'Rock Paper Scissors'
  end

  scenario 'choosing an option' do
    # expect(page).not_to have_content
  end
end
