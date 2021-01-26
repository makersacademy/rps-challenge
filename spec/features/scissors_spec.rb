feature 'Player move' do 
  scenario 'confirm player move' do 
    srand(10)
    sign_in_and_play
    click_link 'Scissors'
    expect(page).to have_content "You win!"
  end
end