feature 'Users are able to playe RPSLS variant' do

  scenario "before user selection" do
    sign_in_2_player_rpsls
    click_button 'spock'
    click_button 'lizard'
    expect(page).to have_content 'Lizard poisons Spock'
  end

end
