require './app'

describe 'Making a Move', type: :feature do
  it 'can choose rock, or paper, or scissors' do
    visit ('/')
    fill_in 'name', with: 'Bob'
    click_button 'Go'

    expect(page).to have_field :rock
    expect(page).to have_field :paper
    expect(page).to have_field :scissors
  end

  # it 'allows user to submit their choice' do
  #   visit ('/')
  #   fill_in 'name', with: 'Bob'
  #   click_button 'Go'
  #   click rock
  #   expect(page).to have_content "Bob"
  # end
end
