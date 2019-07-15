# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'presented with choices' do
  scenario 'shows drop down menu of rock/paper/scissors' do
    visit('/')
    fill_in :player_1_name, with: 'Tim'
    fill_in :player_2_name, with: 'Ian'
    click_button 'Submit'
    expect(page).to have_content 'please pick your weapon:'
  end
end

feature 'presented with choices' do
  scenario 'selects item from drop down menu' do
    visit('/')
    fill_in :player_1_name, with: 'Tim'
    fill_in :player_1_name, with: 'Ian'
    click_button 'Submit'
    select("Rock", :from => "weaponpicker").select_option
    click_button 'Submit'
    expect(page).to have_content 'pick'
  end
end

feature 'shows result page' do
  scenario 'Player 1 wins' do
    visit('/')
    fill_in :player_1_name, with: 'Tim'
    fill_in :player_2_name, with: 'Ian'
    click_button 'Submit'
    select("Rock", :from => "weaponpicker").select_option
    click_button 'Submit'
    select("Scissors", :from => "weaponpicker1").select_option
    click_button 'Submit'
    expect(page).to have_content 'Tim has won!'
  end
  scenario 'Player 2 wins' do
    visit('/')
    fill_in :player_1_name, with: 'Tim'
    fill_in :player_2_name, with: 'Ian'
    click_button 'Submit'
    select("Rock", :from => "weaponpicker").select_option
    click_button 'Submit'
    select("Paper", :from => "weaponpicker1").select_option
    click_button 'Submit'
    expect(page).to have_content 'Ian has won!'
  end
  scenario 'Draw' do
    visit('/')
    fill_in :player_1_name, with: 'Tim'
    fill_in :player_2_name, with: 'Ian'
    click_button 'Submit'
    select("Rock", :from => "weaponpicker").select_option
    click_button 'Submit'
    select("Rock", :from => "weaponpicker1").select_option
    click_button 'Submit'
    expect(page).to have_content 'Alas, it was an honourable draw...'
  end
end
