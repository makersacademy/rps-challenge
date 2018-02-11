require 'spec_helper'

feature 'infrastructure' do
  scenario 'test infrastructure working' do
    visit('/')
    expect(page).to have_content('STONE, SCRIPT, OR SWORD?!')
  end
end
