require_relative 'name_helper'

feature 'name' do
  scenario 'can enter name' do
    enter_name_and_start('Test')
    expect(page).to have_content 'Welcome, Test!'
  end
end
