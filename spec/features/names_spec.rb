feature 'Names' do 
  scenario 'prints player 1 name on play screen' do 
    visit '/'
    click_button '1 Player'
    fill_in :player1, with: 'Ellis'
    click_button 'Submit'
    expect(page).to have_content "It's your turn Ellis!"
  end
  scenario "prints player 2's name on play screen" do
    visit '/'
    click_button '2 Player'
    fill_in :player1, with: 'Ellis'
    fill_in :player2, with: 'Mcnulty'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content "It's your turn Mcnulty!"
  end
end   