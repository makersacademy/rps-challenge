require 'spec_helper'

describe '#register name' do
  it 'register name before playing game' do
    visit '/'
    fill_in 'name': with 'Papya'
    click_button "Submit"
    expect(page)to have_content('Papya')
  end
end
