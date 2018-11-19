# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature "enter name" do 

  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Go!'
    expect(page).to have_content 'Dave'
  end

  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Go!'
    click_button 'Confirm!'
    expect(page).to have_content 'Mittens'
  end
  
end