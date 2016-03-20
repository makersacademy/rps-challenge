feature 'play game' do

  scenario 'selects options and plays game' do
    visit '/'
    fill_in :player, with: 'Sachin'
    click_button 'Start Game'
    choose ('rock')
    click_button 'play'
    expect(page).to have_text("You played Rock!")
  end

end