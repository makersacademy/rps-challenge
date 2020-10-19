feature 'showing game result' do

  scenario 'draw' do
    srand(0)
    register_name
    click_button 'Rock'
    expect(page).to have_content("It's a draw")
  end

  scenario 'Player wins' do
    srand(3)
    register_name
    click_button 'Rock'
    expect(page).to have_content("Alex wins")
  end

  scenario 'Computer wins' do
    srand(1)
    register_name
    click_button 'Rock'
    expect(page).to have_content("Computer wins")
  end
end
