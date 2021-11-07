require_relative 'web_helpers'

feature 'rps' do
  scenario 'displays the choices' do
    register_name 
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end

  scenario 'generates a random computer choice' do
    register_name 
    click_on 'Play!'
    expect(page).to have_content 'Computer choice:'
  end

end