feature 'make round choice' do
  scenario 'choose paper' do
    sign_in
    choose 'round_choice', option: 'paper'
    click_button 'Submit'
    expect(page).to have_text 'Ali, you chose: paper'
  end

  scenario 'choose rock' do
    sign_in
    choose 'round_choice', option: 'rock'
    click_button 'Submit'
    expect(page).to have_text 'Ali, you chose: rock'
  end

  scenario 'choose scissors' do
    sign_in
    choose 'round_choice', option: 'scissors'
    click_button 'Submit'
    expect(page).to have_text 'Ali, you chose: scissors'
  end
end
