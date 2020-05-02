feature 'Names' do 
  scenario 'enter player 1 name' do 
    visit '/'
    click_button '1 Player'
    fill_in :player1, with: 'Ellis'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Ellis!'
  end
  scenario 'enter player 2 name' do
    visit '/'
    click_button '2 Player'
    fill_in :player1, with: 'Ellis'
    fill_in :player2, with: 'Mcnulty'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'Welcome Mcnulty!'
  end
end   