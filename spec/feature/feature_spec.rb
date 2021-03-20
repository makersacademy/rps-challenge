feature 'Register name' do
  scenario 'has a field to input name and displays name' do
    sign_in_and_play
    expect(page).to have_content("Taran")
  end
end

feature 'Player can select RPS and their choice is displayed' do
  scenario 'Player picked Rock from a select, displays rock' do
    sign_in_and_play
    select 'Rock', from: 'choices'
    click_button('Confirm')
    expect(page).to have_content("Rock")
  end
end

feature 'Computer selects RPS at random' do
  scenario 'Computer selects Paper, Paper is displayed' do
    # This seed sets the computer's selection to Paper
    srand(1)
    sign_in_and_play
    select 'Rock', from: 'choices'
    click_button('Confirm')
    expect(page).to have_content("Paper")
  end
end

feature 'Determine Win, draw and lose' do
  scenario 'Both the computer and player select the same option' do
    srand(1)
    sign_in_and_play
    select 'Paper', from: 'choices'
    click_button('Confirm')
    expect(page).to have_content("Draw")
  end

  scenario 'Player wins' do
    # This seed sets the computer's selection to Paper
    srand(1)
    sign_in_and_play
    select 'Scissors', from: 'choices'
    click_button('Confirm')
    expect(page).to have_content("won")
  end

  scenario 'Computer wins' do
    # This seed sets the computer's selection to Paper
    srand(1)
    sign_in_and_play
    select 'Rock', from: 'choices'
    click_button('Confirm')
    expect(page).to have_content("lost")
  end
end

