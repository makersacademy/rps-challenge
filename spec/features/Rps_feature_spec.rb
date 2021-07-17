require_relative '../../app.rb'

Rspec.feature 'RPS' do
  scenario 'is expected to have title on home page' do
    visit "/"
    expect(page).to have_text("Welcome!")
  end
end