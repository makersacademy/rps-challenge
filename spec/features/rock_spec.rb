feature 'Player move' do 
  scenario 'confirm player move' do 
    srand(4)
    sign_in_and_play
    click_link 'Rock'
    expect(page).to have_content "You win!"
  end
end
