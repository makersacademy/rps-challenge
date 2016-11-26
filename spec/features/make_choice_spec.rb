
feature 'make a choice' do

  scenario 'choose rock' do
    sign_in_and_play
    click_button 'ROCK'
    expect(page).to have_content 'You chose ROCK'
  end

end
