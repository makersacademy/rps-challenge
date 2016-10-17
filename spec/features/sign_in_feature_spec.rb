require "spec_helper"

feature 'Sign in' do
  scenario 'expects to see a greeting with the entered name' do
    sign_in('Tadas')
    expect(page).to have_content('Hi, Tadas')
  end
end
