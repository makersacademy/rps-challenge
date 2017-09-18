feature 'Playing the game' do
  scenario "When I submit Rock I am told I have won" do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    visit '/'
    fill_in :player_1_name, with: "Sunali"
    visit '/play'
    click_button'Rock'
    expect(page).to have_content "The result is.... You have won"
  end

  scenario "When I submit Paper I am told I have lost" do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    visit '/'
    fill_in :player_1_name, with: "Sunali"
    visit '/play'
    click_button'Rock'
    expect(page).to have_content "The result is.... You have lost"
  end

  scenario "When I submit Scissors I am told Its a draw" do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    visit '/'
    fill_in :player_1_name, with: "Sunali"
    visit '/play'
    click_button'Rock'
    expect(page).to have_content "The result is.... Its a draw"
  end
end
