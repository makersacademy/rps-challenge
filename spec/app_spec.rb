require 'spec_helper'

feature 'it has a infrastructure' do 
    scenario 'goes to homepage' do
        visit('/')
        expect(page).to have_content("testing infrastructure")
    end
end