feature '/tie' do 
  scenario 'game result is a tie' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    visit '/'
    fill_in(:player_1_name, with: 'goku')
    click_button('Single Player')
    click_button('Rock')
    expect(page).to have_content "It's a tie"
  end
end
