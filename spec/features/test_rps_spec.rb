feature 'test rps choice page functionality' do

  scenario 'user chooses rock, paper or scissors' do
    sign_in
    click_on('Rock')
    expect(page).to have_content('You chose Rock!')
  end

end
