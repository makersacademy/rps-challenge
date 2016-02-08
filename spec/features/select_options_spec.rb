feature 'can select options for play' do
  scenario 'rock' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content "You play: Rock"
  end
  
  scenario 'paper' do
    sign_in
    click_button 'Paper'
    expect(page).to have_content "You play: Paper"
  end
  
  scenario 'scissors' do
    sign_in
    click_button 'Scissors'
    expect(page).to have_content "You play: Scissors"
  end
end