feature 'choose an option' do
  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors
  scenario 'choose rock' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content 'You Chose Rock'
  end

  scenario 'choose paper' do
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content 'You Chose Paper'
  end

  scenario 'choose scissors' do
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content 'You Chose Scissors'
  end
end
