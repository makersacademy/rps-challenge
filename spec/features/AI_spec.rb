feature 'AI oponent' do
  xscenario 'AI chooses rock' do
    sign_in
    player_1_rock
    find_button('Opponents turn').click
    expect(page).to have_content "AI Overlord plays Rock against Alex's Rock"
  end
end
