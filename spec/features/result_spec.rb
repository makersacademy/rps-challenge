# 3. I would like to find out the result

feature 'Result' do
  scenario 'Win' do
    sign_in_and_play
    click_button 'Start game'
    click_button 'Rock'
    expect(page).to have_content "Result"
  end

  scenario 'Tally' do
    sign_in_and_play
    click_button 'Start game'
    click_button 'Rock'
    expect(page).to have_content "Tally:"
  end
end
