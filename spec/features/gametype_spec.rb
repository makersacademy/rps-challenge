feature 'hompeage' do 
  scenario 'choose multiplayer' do 
    visit '/'
    click_button '2 Player'
    expect(page).to have_content 'Player 2 name'
  end
  scenario 'choose 1 player' do 
    visit '/'
    click_button '1 Player'
    expect(page).to_not have_content 'Player 2 name'
  end
end
