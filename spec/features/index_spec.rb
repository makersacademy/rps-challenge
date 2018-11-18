feature 'index' do

  before do
    visit '/'
  end

  scenario 'User can enter his/her name' do
    page.fill_in 'name', with: 'Luca'
    expect(page).to have_content 'Choose your weapon!'
    click_on 'Play!'
  end
end
