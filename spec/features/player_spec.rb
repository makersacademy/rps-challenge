feature 'enter name' do
  scenario 'player enters name to start game' do
    visit('/')
   fill_in :player_name, with: 'player_name'
   click_button 'READY TO FLEX'
    #register_and_play
    expect(page).to have_content 'player_name vs Bert'
  end
end
