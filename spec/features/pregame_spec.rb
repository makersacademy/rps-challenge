
feature 'User asked which game type they would like to play' do
  scenario 'Entering site' do
    visit('/')
    expect(page).to have_content 'Which game type would you like to play?'
    expect(page).to have_selector(:link_or_button, 'RPS')
    expect(page).to have_selector(:link_or_button, 'RPSLS')
  end
end

feature 'User asked how many players' do
  scenario 'After selecting RPS game type' do
    visit('/')
    click_link 'RPS'
    expect(page).to have_content 'How many players?'
    expect(page).to have_selector(:link_or_button, '1 Player')
    expect(page).to have_selector(:link_or_button, '2 Player')
  end

  scenario 'After selecting RPSLS game type' do
    visit('/')
    click_link 'RPSLS'
    expect(page).to have_content 'How many players?'
    expect(page).to have_selector(:link_or_button, '1 Player')
    expect(page).to have_selector(:link_or_button, '2 Player')
  end
end

feature 'User(s) asked to enter name' do
  scenario 'RPS > 1 player' do
    visit('/')
    click_link 'RPS'
    click_link '1 Player'
    expect(page).to have_content 'Player 1'
    fill_in :name, with: 'Terry'
    click_link 'Submit'
    expect(page).to have_current_path('/game')
  end

  scenario 'RPSLS > 1 player' do
    visit('/')
    click_link 'RPS'
    click_link '1 Player'
    expect(page).to have_content 'Player 1'
    fill_in :name, with: 'Terry'
    click_link 'Submit'
    expect(page).to have_current_path('/game')
  end

  scenario 'RPS > 2 player' do
    visit('/')
    click_link 'RPS'
    click_link '1 Player'
    fill_in :name, with: 'Terry'
    click_link 'Submit'
    expect(page).to have_current_path('/player-2-name')
  end



end

# feature 'User enters player name' do
#   scenario 'RPS > 1 player' do
#     visit('/')
#     click_link 'RPS'
#     click_link '1 Player'
#     fill_in :player_1_name, with: 'Terry'
#     expect(page).to have_content 'How many players?'
#     expect(page).to have_selector(:link_or_button, '1 Player')
#     expect(page).to have_selector(:link_or_button, '2 Player')
#   end
#
#   scenario 'After selecting RPSLS game type' do
#     visit('/')
#     click_link 'RPSLS'
#     expect(page).to have_content 'How many players?'
#     expect(page).to have_selector(:link_or_button, '1 Player')
#     expect(page).to have_selector(:link_or_button, '2 Player')
#   end
# end
