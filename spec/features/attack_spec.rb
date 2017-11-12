feature 'player choice' do
  scenario 'player choose Rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content('Rock')
  end
end

feature 'computer choice' do
  scenario 'computer choose Rock' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content('Rock')
  end
end
