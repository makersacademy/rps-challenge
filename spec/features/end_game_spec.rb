feature 'ends game with bot' do

  scenario 'displays bot rps choice' do
    enter_name_and_play
    click_button('Rock')
    click_button('OK')
    expect(page).to have_content 'The bot has chosen to retaliate with'
  end

end
