feature "Enter player's name" do
  scenario 'submitting the name' do
    visit('/')
    fill_in :p1_name, with: 'Luiza'
    click_button 'Submit'
    expect(page).to have_content 'Luiza'
  end
end