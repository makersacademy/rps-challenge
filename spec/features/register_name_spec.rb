feature 'Register name before playing game' do
  scenario 'Enter name' do
    visit('/')
    fill_in(:player_name, with: 'Sarah')
    click_on('submit')
    expect(page).to have_content ("Welcome Sarah!")
  end
end