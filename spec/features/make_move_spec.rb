feature 'Make move' do
  scenario 'player chooses rock move' do
    visit('/game')
    sign_in_and_play

    click_button 'rock'
    # expect(page).to have_content ''
  end

  scenario 'player chooses paper move' do
    visit('/game')
    sign_in_and_play

    click_button 'paper'
    # expect(page).to have_content ''
  end

  scenario 'player chooses scissor move' do
    visit('/game')
    sign_in_and_play

    click_button 'scissor'
    # expect(page).to have_content ''
  end 

  scenario 'passing on wisdom' do
    visit('/game')
    sign_in_and_play

    expect(page).to have_content 'Choose wisely...'
  end
end