feature 'Playing the game' do
  scenario "When I submit 'Rock' I am told if I have won" do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    allow_any_instance_of(Player).to receive(:name_of_weapon).and_return('scissors')
    visit '/'
    fill_in :player_name, with: 'Cat'
    click_button 'scissors'
    expect(page).to have_content "It's a draw"
  end
end