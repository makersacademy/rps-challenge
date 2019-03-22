feature 'landing page display' do

  scenario 'user views landing page' do
    visit '/'
    expect(page).to have_text("Hi Pusheen! The landing page works!")
  end

end