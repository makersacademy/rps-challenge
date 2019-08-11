
feature 'Fighting' do

  scenario 'player picks spoek and computer randomly picks' do
    set_player_name
    click_button 'Spock'
    expect(page).to have_content 'Spock vs'
  end

end
