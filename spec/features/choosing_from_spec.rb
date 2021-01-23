feature 'Playing the game' do
  scenario 'When I submit rock I am told I won' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    enter_name_and_submit
    select "Rock", from: 'choice'
    click_button 'Play'
    expect(page).to have_content "YOU WON!"
  end
end
