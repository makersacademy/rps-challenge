
feature 'in game functionality' do

  scenario 'can pick rock' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content 'rock'
  end

  scenario 'can pick paper' do
    sign_in_and_play
    click_button 'paper'
    expect(page).to have_content 'paper'
  end

  scenario 'can pick scissors' do
    sign_in_and_play
    click_button 'scissors'
    expect(page).to have_content 'scissors'    
  end

end
