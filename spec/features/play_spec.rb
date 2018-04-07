feature 'Play' do
  scenario 'Can select rock' do
    sign_in_and_play
    click_link 'Rock'
    expect(page).to have_content 'You selected'
  end
  scenario 'Can select paper' do
    sign_in_and_play
    click_link 'Paper'
    expect(page).to have_content 'You selected'
  end
  scenario 'Can select scissors' do
    sign_in_and_play
    click_link 'Scissors'
    expect(page).to have_content 'You selected'
  end
end
