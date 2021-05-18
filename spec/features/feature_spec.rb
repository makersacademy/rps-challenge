# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game


feature 'selection option' do
  scenario 'can select either , rock, paper or scissors' do
    visit('/')
    fill_in('name', with: 'Des')
    select('Rock', from: 'selection')
    click_button('Play!')
    expect(page).to have_content 'Results!'
  end
end