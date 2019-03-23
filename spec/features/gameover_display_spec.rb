feature 'Game Over Display' do

  scenario 'When it is game over, the user sees the outcome of the game' do
    visit '/'
    enter_name
    click_button 'Rock'
    expect(page).to have_text("The winner is Winner!")
  end

end
