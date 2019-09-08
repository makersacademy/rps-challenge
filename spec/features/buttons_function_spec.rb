feature 'Choose' do
  scenario 'Option rock' do
    sign_in_and_play
    click_on 'ROCK'
    expect(page).to have_content 'You chose ROCK'
  end

  scenario 'Option paper' do
    sign_in_and_play
    click_on 'PAPER'
    expect(page).to have_content 'You chose PAPER'
  end

  scenario 'Option scissors' do
    sign_in_and_play
    click_on 'SCISSORS'
    expect(page).to have_content 'You chose SCISSORS'
  end
end
