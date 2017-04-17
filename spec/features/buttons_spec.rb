feature 'choose weapon' do
  scenario 'select rock' do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content 'Jon selected rock'
  end

  scenario 'select paper' do
    sign_in_and_play
    click_button('paper')
    expect(page).to have_content 'Jon selected paper'
  end

  scenario 'select scissors' do
    sign_in_and_play
    click_button('scissors')
    expect(page).to have_content 'Jon selected scissors'
  end
end
