feature 'Playing the game' do
  scenario "When I submit 'Rock' I am told if I have won" do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    visit '/'
    fill_in :player_name, with: 'Cat'
    click_button 'rock'
    expect(page).to have_content "Cat is the winner"
  end
end