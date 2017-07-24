feature 'multiplayer game shows generic message' do
  scenario 'after player 1 has chosen' do
    sign_in_and_play_multi('Alex', 'Jason')
    find("form[name='player-1']").click_button "rock"
    expect(page).to have_content 'Alex has chosen!'
  end
end
