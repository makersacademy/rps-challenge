feature 'Player choose a gesture' do 
  scenario 'Player can choose a shape Rock' do
    sign_in_and_play
    expect(page).to have_button('Rock')
  end
  
  scenario 'Player can choose a shape Paper ' do
    sign_in_and_play
    expect(page).to have_button('Paper')
  end

  scenario 'Player can choose a shape Scissors' do
    sign_in_and_play
    expect(page).to have_button('Scissors')
  end
end