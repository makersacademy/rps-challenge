feature 'game' do

  before do
    visit '/'
    page.fill_in 'name', with: 'Luca'
    click_on 'Play!'
  end

  scenario 'User can choose the weapon' do
    visit '/game'
    expect(page).to have_content 'Choose your weapon, Luca!'
  end
end
