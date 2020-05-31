feature 'playing the game rock/paper/scissors' do
  scenario 'player can select 3 options' do
    sign_in_and_play

    expect(page).to have_content 'please choose one option'
    choose 'Rock'
    choose 'Paper'
    choose 'Scissors'

    click_button 'play'
  end
end
