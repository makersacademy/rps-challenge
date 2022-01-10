feature 'Matching selections draw' do
  scenario 'rock vs. rock' do 
    human_bob_babs_play
    click_button "ROCK"
    click_button "ROCK"
    expect(page).to have_content "The results are in:\nIt's a draw!"
  end

  scenario 'spock vs. spock' do 
    human_bob_babs_play
    click_button "SPOCK"
    click_button "SPOCK"
    expect(page).to have_content "The results are in:\nIt's a draw!"
  end
end
