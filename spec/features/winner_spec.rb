feature 'Winner' do
  scenario 'Selects correct winner against rock' do
    sign_in_and_play
    click_button 'rock'
    outcome = "It's a draw" if page.has_content?('opponent chose rock')
    outcome = 'You loose' if page.has_content?('opponent chose paper')
    outcome = 'You win' if page.has_content?('opponent chose scissors')
    expect(page).to have_content(outcome)
  end

  scenario 'Selects correct winner against paper' do
    sign_in_and_play
    click_button 'paper'
    outcome = 'You win' if page.has_content?('opponent chose rock')
    outcome = "It's a draw" if page.has_content?('opponent chose paper')
    outcome = 'You loose' if page.has_content?('opponent chose scissors')
    expect(page).to have_content(outcome)
  end

  scenario 'Selects correct winner against scissors' do
    sign_in_and_play
    click_button 'scissors'
    outcome = 'You loose' if page.has_content?('opponent chose rock')
    outcome = 'You win' if page.has_content?('opponent chose paper')
    outcome = "It's a draw" if page.has_content?('opponent chose scissors')
    expect(page).to have_content(outcome)
  end
end
