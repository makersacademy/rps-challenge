feature 'player picks' do
  scenario 'player chooses rock' do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content('You picked rock')
  end
  scenario 'player chooses scissors' do
    sign_in_and_play
    click_button('scissors')
    expect(page).to have_content('You picked scissors')
  end
  scenario 'player chooses paper' do
    sign_in_and_play
    click_button('paper')
    expect(page).to have_content('You picked paper')
  end
end
