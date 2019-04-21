feature 'Given options for RPS' do
  scenario 'player sees buttons for rock paper scissors' do
    sign_in_and_play
    expect(page).to have_selector(:button,'Rock')
    expect(page).to have_selector(:button,'Paper')
    expect(page).to have_selector(:button,'Scissors')
  end

  scenario 'player chooses rock' do
    sign_in_and_play
    click_button'Rock'
    expect(page).to have_content'rock'
  end

  scenario 'player chooses paper' do
    sign_in_and_play
    click_button'Paper'
    expect(page).to have_content'paper'
  end

  scenario 'player chooses rock' do
    sign_in_and_play
    click_button'Scissors'
    expect(page).to have_content'scissors'
  end
end
