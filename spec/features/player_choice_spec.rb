feature 'Given options for RPS' do
  scenario 'player sees buttons for rock paper scissors' do
    sign_in_and_play
    expect(page).to have_selector(:link,'Rock')
    expect(page).to have_selector(:link,'Paper')
    expect(page).to have_selector(:link,'Scissors')
  end
end
