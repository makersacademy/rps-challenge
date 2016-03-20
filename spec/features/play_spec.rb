
feature 'in game functionality' do

  scenario 'can pick rock' do
    sign_in_and_play
    expect(page).to have_button 'rock'
  end

  scenario 'can pick paper' do
    sign_in_and_play
    expect(page).to have_button 'paper'
  end

  scenario 'can pick scissors' do
    sign_in_and_play
    expect(page).to have_button 'scissors'    
  end

end
