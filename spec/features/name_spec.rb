require_relative 'web_helper'
feature 'checks that name appears on play page' do
  scenario do
    sign_in
    expect(page).to have_content('Hello John')
  end
end
