feature 'Attack' do
  scenario 'Rock' do
    register_and_play
    click_button('Rock')
    expect(page).to have_content 'Rob attacks with rock!'
  end
  scenario 'Paper' do
    register_and_play
    click_button('Paper')
    expect(page).to have_content 'Rob attacks with paper!'
  end
  scenario 'Scissors' do
    register_and_play
    click_button('Scissors')
    expect(page).to have_content 'Rob attacks with scissors!'
  end
end
