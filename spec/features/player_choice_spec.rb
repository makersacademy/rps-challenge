feature 'Player options' do
  scenario 'player sees buttons for rock paper scissors' do
    sign_in_and_play
    expect(page).to have_selector(:button, 'Rock')
    expect(page).to have_selector(:button, 'Paper')
    expect(page).to have_selector(:button, 'Scissors')
  end

  scenario 'player chooses Rock' do
  sign_in_and_play
  click_on("Rock")
  expect(page).to have_content 'Rock'
end

scenario 'player chooses paper' do
  sign_in_and_play
  click_on("Paper")
  expect(page).to have_content 'Paper'
end

scenario 'player chooses Scisccors' do
  sign_in_and_play
  click_on("Scissors")
  expect(page).to have_content 'Scissors'
end
end
