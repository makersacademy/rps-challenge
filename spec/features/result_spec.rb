feature 'result' do 

  scenario 'shows player_0' do
    sign_in_and_play
    click_button '🗿'
    expect(page).to have_content 'You chose: 🗿'
  end

  scenario 'has play again link' do
    sign_in_and_play
    click_button '🗿'
    expect(page).to have_link('Play again?', :href => '/play')
  end
  
end
