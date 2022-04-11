=begin
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game
=end

feature 'Can enter name' do
  scenario 'submit name' do
    visit('/')
    fill_in :player_name, with: 'David'
    click_button 'Submit'
    expect(page).to have_content 'David'
  end
end
