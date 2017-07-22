feature 'Playing the game' do
  scenario "When I submit 'Rock' I am told if I have won" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    visit '/'
    fill_in :player_1_name, with: 'Bob'
    click_button 'Submit'
    fill_in :weapon_choice, with: 'Rock'
    click_button 'Submit'
    click_button 'Fight'
    expect(page).to have_content "Bob wins!!"
  end
end
