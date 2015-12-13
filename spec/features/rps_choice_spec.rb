feature 'Choice of RPS' do
  xscenario 'player is presented with choice of RPS' do
    visit '/'
    fill_in(:player_1_name, with: 'Tom')
    click_button 'Play!'
    expect(page).to have_content 'Please select your weapon: Rock Paper Scissors'
  end
end
