feature 'Enter name' do
  scenario 'submit name' do
    visit('/')
    fill_in :player_name, with: 'Duffy Duck'
    click_button 'Submit'
    expect(page).to have_content 'Duffy Duck, choose your move:'
  end
end
