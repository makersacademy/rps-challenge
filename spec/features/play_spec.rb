feature 'Enter name' do
  scenario 'submitting name' do
    sign_in_and_play
    expect(page).to have_content 'Alex vs. The Machine'
  end
end

feature 'starting a game' do
  scenario 'Selecting Rock' do
    sign_in_and_play
    expect(page).to have_content 'Rock'
  end

  scenario 'Selecting Paper' do
    sign_in_and_play
    expect(page).to have_content 'Paper'
  end

  scenario 'Selecting Scissors' do
    sign_in_and_play
    expect(page).to have_content 'Scissors'
  end
end
