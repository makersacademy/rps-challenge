feature 'Playing the game' do
  scenario "When I submit 'Rock' I am told if I have won" do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    submit_name
    click_button 'Rock'
    expect(page).to have_content "Noel won"
  end
  scenario "When I submit 'Rock' I am told if I have lost" do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    submit_name
    click_button 'Rock'
    expect(page).to have_content "Noel lost"
  end
end
