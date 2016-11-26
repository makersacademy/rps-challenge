require 'spec_helper'

feature RPS do
  scenario 'Returns the home page for RPS' do
    visit '/'
    expect(page).to have_content("Hello this is Sparta!")
  end

  scenario 'Home page provides log in field' do
    visit '/'
    fill_in('name', with: 'Kornelia')
  end

  scenario 'Can click submit button' do
    visit '/'
    fill_in('name', with: 'Kornelia')
    click_button('Submit')
    visit '/play'
  end

  scenario 'Clicking on About will redirect to about page' do
    visit '/'
    click_link('About')
    expect(page.current_path).to eq '/about'
  end

  scenario 'After submitting name, page redirects' do
    visit '/'
    fill_in('name', with: 'Kornelia')
    click_button('Submit')
    expect(page.current_path).to eq '/play'
  end

  scenario 'After submitting name, game starts at play page' do
    visit '/'
    fill_in('name', with: 'Kornelia')
    click_button('Submit')
    visit '/play'
    expect(page).to have_content("Let's play")
  end

end
