feature 'Win game' do
  
  scenario 'win game' do
    setup
    have_selected "Rock"
    click_button "Shoot!"
    expect(page).to have_content "wins"
  end

  scenario 'play again' do
    setup
    have_selected "Rock"
    click_button "Shoot!"
    expect(page).to have_button('Play again?')
  end
end
