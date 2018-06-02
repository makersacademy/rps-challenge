feature 'name page' do
  before do
    visit('/')
    click_link('Play')
  end

  scenario 'name label' do
    expect(page).to have_text('Enter name')
  end

  scenario 'name field' do
    expect(page).to have_field('name')
  end

  scenario 'submit' do
    expect(page).to have_button('Confirm')
  end
end
