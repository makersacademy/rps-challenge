require './lib/weapon'

feature 'Index page loads' do
  scenario 'with greeting' do
    visit '/'
    expect(page).to have_content "Hello there!"
  end

  scenario 'with option to add player name' do
    visit '/'
    expect(page).to have_field :name
  end

  scenario 'with option to choose Rock' do
    visit '/'
    click_button('Go!')
    expect(page).to have_content "Pick your Weapon"
  end

end
