feature 'Playing the game' do
  scenario "When I submit 'Rock' I am told if I have won" do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    visit '/'
    fill_in('name', with: 'Meg')
    select('rock', from: 'your_choice')
    click_button('Play')
    expect(page).to have_content "The result is .... You won"
  end
end