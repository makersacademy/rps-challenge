feature '/result' do
  scenario 'game is won' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    visit '/'
    fill_in(:player_1_name, with: 'goku')
    click_button('Single Player')
    click_button('Rock')
    expect(page).to have_content "goku wins!"
  end
end
