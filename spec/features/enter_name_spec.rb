feature "Enter player's name" do
  scenario 'submitting the name' do
    visit('/')
    fill_in :player_name, with: 'Olly'
    click_button "Let's go!"
    expect(page).to have_content 'Olly vs Scary monster'
  end
end