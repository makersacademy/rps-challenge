feature 'Play game' do
  scenario 'player sees welcome message and is asked to select weapon' do
    sign_in_and_play
    expect(page).to (have_content "Welcome #{@name}") and (have_content "Select your weapon")
  end

  scenario 'player can select rock' do
    sign_in_and_play
    click_button('Rock')
  end

  scenario 'player can select paper' do
    sign_in_and_play
    click_button('Paper')
  end

  scenario 'player can select scissors' do
    sign_in_and_play
    click_button('Scissors')
  end
end
