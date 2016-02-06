feature 'make_move' do
  scenario 'player can choose rock' do
    sign_in_with_name
    page.choose('Rock1')
    click_button 'Submit'
    expect(page).to have_content('Eirik chose: Rock')
  end

  scenario 'player returns to play another game' do
    sign_in_with_name
    choose('Rock1')
    click_button 'Submit'
    click_button 'Play again'
    expect(page).to have_content('Eirik vs. ')
  end
end
