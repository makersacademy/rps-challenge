
feature 'choose rock' do
  scenario 'should confirm choosing rock' do
    enter_name
    click_button 'Rock'
    expect(page).to have_content "Debora chose Rock!"
  end
end
feature 'choose paper' do
  scenario 'should confirm choosing rock' do
    enter_name
    click_button 'Paper'
    expect(page).to have_content "Debora chose Paper!"
  end
end
feature 'choose scissors' do
  scenario 'should confirm choosing rock' do
    enter_name
    click_button 'Scissors'
    expect(page).to have_content "Debora chose Scissors!"
  end
end
