feature 'Present Choices' do
  scenario 'Player is presented with choice of Rock' do
    sign_in_and_play
    expect(page).to have_selector("input[type=submit][value='Rock']")
  end
  scenario 'Player is presented with choice of Paper' do
    sign_in_and_play
    expect(page).to have_selector("input[type=submit][value='Paper']")
  end
  scenario 'Player is presented with choice of Scissors' do
    sign_in_and_play
    expect(page).to have_selector("input[type=submit][value='Scissors']")
  end
end
