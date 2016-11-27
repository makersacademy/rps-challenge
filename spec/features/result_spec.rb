require 'spec_helper'

feature 'Result' do

  scenario 'should test that game status is returned' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    visit ("/")
    fill_in("player", :with => "Courtney")
    click_button("Submit")
    click_button("Rock")
    expect(page).to have_content "Draw"

  end

end
