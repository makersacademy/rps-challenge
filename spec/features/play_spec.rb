
feature 'choose rock' do
  scenario 'should confirm choosing rock' do
    enter_name
    click_button 'Rock'
    expect(page).to have_content "Debora chose Rock!"
  end
end
