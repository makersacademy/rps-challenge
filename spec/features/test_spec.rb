feature 'player fills in name' do
  scenario 'player entersname and submits' do
    sign_in_and_play
    expect(page).to have_content 'Jayda'
  end
end

feature 'player makes a choice' do
  scenario 'player selects rock' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content 'rock'
  end

  scenario 'player selects rock' do
    sign_in_and_play
    click_button 'paper'
    expect(page).to have_content 'paper'
  end

  scenario 'player selects rock' do
    sign_in_and_play
    click_button 'scissors'
    expect(page).to have_content 'scissors'
  end

end
