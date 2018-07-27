feature 'ends game with bot' do

  scenario 'displays bot rps choice' do
    enter_name_and_play
    choose('rock')
    click_button 'Submit'
    expect(page).to have_content 'The bot has chosen to retaliate with'
  end

end
