feature 'Choosing my rps' do
  scenario "I choose 'rock' from choice" do
  #  allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    visit '/'
    fill_in('name', with: 'Rana')
    select('rock', from: 'player_choice')
    click_button('Play')
    expect(page).to have_content "Rana chooses rock"
  end
end
