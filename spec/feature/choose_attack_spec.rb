feature 'Weapon Choice' do
  scenario 'choose rock' do
    sign_in
    choose('rock')
    click_button 'Submit'
    expect(page).to have_content('Rock')
  end

end
