feature 'can select options for play' do
  scenario 'rock' do
    sign_in
    click_link 'Rock'
    expect(page).to have_content "Rock"
  end
  
  scenario 'paper' do
    sign_in
    click_link 'Paper'
    expect(page).to have_content "Paper"
  end
  
  scenario 'scissors' do
    sign_in
    click_link 'Scissors'
    expect(page).to have_content "Scissors"
  end
end