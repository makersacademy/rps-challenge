feature 'Given options for RPS' do
  scenario 'player sees buttons for rock paper scissors' do
    sign_in_and_play
    expect(page).to have_selector(:link,'Rock')
    expect(page).to have_selector(:link,'Paper')
    expect(page).to have_selector(:link,'Scissors')
  end

  scenario 'player chooses rock' do
    sign_in_and_play
    click_link('Rock')
    expect(page).to have_content('rock')
  end

  scenario 'player chooses paper' do
    sign_in_and_play
    click_link('Paper')
    expect(page).to have_content('paper')
  end

  scenario 'player chooses rock' do
    sign_in_and_play
    click_link('Scissors')
    expect(page).to have_content('scissors')
  end
end
