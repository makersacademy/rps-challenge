feature 'switching turns' do
  scenario 'you can see the current players turn' do
    register_and_play
    expect(page).to have_content "Ayelisha's turn"
  end

  scenario 'after player one chooses the current player switches' do
    register_and_play
    click_button 'Rock'
    click_button 'Next Player'
    expect(page).to have_content "Elliott's turn"
  end
end
