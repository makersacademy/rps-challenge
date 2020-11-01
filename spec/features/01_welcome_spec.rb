feature 'Welcome screen is available' do
  scenario ' - player is greeted when first arrives' do
    visit '/'
    expect(page).to have_content 'Welcome to your RPS Game!'
  end
end
