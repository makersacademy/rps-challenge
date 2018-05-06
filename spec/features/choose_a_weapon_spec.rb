feature 'player can see a choice of three weapons' do
  scenario 'player chooses rock' do
    sign_in_and_start
    click_button 'rock'
    expect(page).to have_content 'Your choice: rock'
  end
  scenario 'player chooses paper' do
    sign_in_and_start
    click_button 'paper'
    expect(page).to have_content 'Your choice: paper'
  end
  scenario 'player chooses scissors' do
    sign_in_and_start
    click_button 'scissors'
    expect(page).to have_content 'Your choice: scissors'
  end
end
