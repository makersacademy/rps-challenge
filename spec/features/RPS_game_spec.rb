# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'presented with choices' do
  scenario 'shows drop down menu of rock/paper/scissors' do
    visit('/')
    fill_in :player_1_name, with: 'Tim'
    click_button 'Submit'
    expect(page).to have_content 'Please pick your weapon:'
  end
end

feature 'presented with choices' do
  scenario 'selects item from drop down menu and shows result' do
    visit('/')
    fill_in :player_1_name, with: 'Tim'
    click_button 'Submit'
    select("Rock", :from => "weaponpicker").select_option
    click_button 'Submit'
    expect(page).to have_content 'You picked Rock!'
  end
end
