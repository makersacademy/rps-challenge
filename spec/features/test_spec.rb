feature 'player fills in name' do
  scenario 'player enters name and submits' do
    submit_name
    expect(page).to have_content 'Jayda'
  end
end

feature 'player makes a choice' do
  scenario 'player selects rock' do
    submit_name
    click_button 'rock'
    expect(page).to have_content 'rock'
  end

  scenario 'player selects paper' do
    submit_name
    click_button 'paper'
    expect(page).to have_content 'paper'
  end

  scenario 'player selects scissors' do
    submit_name
    click_button 'scissors'
    expect(page).to have_content 'scissors'
  end
end

feature 'player plays the game' do
  scenario do
    submit_name

    end
end
