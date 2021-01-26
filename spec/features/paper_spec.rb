feature 'Player move' do 
  scenario 'player takes turn' do 
    srand(5)
    sign_in_and_play
    click_link 'Paper'
    expect(page).to have_content 'You lose!'
  end
end