feature 'Pick Game Mode' do

  scenario 'pick 1 player ' do
    visit('/')
    click_button('1 Player')
    expect(page).to have_content 'Rock Paper Scissors Sign in to play! Player 1 name'
  end


scenario 'pick 2 player ' do
    visit('/')
    click_button('2 Player')
    expect(page).to have_content 'Rock Paper Scissors Sign in to play! Player 1 name Player 2 name'
  end

end

feature 'Enter Player names' do

  scenario 'submitting 1 Player names' do
    visit('/')
    click_button('1 Player')
    sign_in_and_play1
    expect(page).to have_content 'PLAY Gimi VS Computer 1 = Rock 2 = Paper 3 = Scissors Player 1 Select :'
  end

  scenario 'submitting 2 Player names' do
    visit('/')
    click_button('2 Players')
    sign_in_and_play2
    expect(page).to have_content 'PLAY Gimi VS Tara 1 = Rock 2 = Paper 3 = Scissors Player 1 Select : Player 2 Select :'
  end
end
