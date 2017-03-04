feature 'Enter names' do
  scenario 'Entering names' do
    player_1 = 'Ryan'
    visit '/'
    fill_in(:player_1, with: player_1)
    click_button('Submit')
    expect(page).to have_content "#{player_1}'s hand on deck"
  end
end

feature 'presents actions' do
  scenario 'allows choosing of rock/paper/scissors' do
    player_1 = 'Ryan'
    visit '/'
    fill_in(:player_1, with: player_1)
    click_button('Submit')
    expect(page).to have_content "Rock"
  end
end

feature 'sends action through to game' do
  scenario 'player chooses an option (rock)' do
    player_1 = 'Ryan'
    visit '/'
    fill_in(:player_1, with: player_1)
    click_button('Submit')
    choose('Rock')
    click_button('Submit')
    expect(page).to have_content "Ryan chose Rock"
  end
end

#play.erb form selection needs to send data
