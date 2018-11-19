require_relative '../../lib/app.rb'

feature "gets and displays players name" do
  scenario "players enter names" do
    details_comp
    fight
    expect(page).to have_content("Kirill picked ")
  end
end

feature "can have human opponent" do
  scenario "select human enemy" do
    details_human
    fight
    expect(page).to have_content("Welcome Kirill's enemy!")
  end

  scenario "select human enemy" do
    details_human
    fight
    fill_in('name_2', :with => 'Jackie')
    choose(option: 'scissors')
    fight
    expect(page).to have_content("Kirill wins!")
  end
end

feature "can have computer opponent" do
  scenario "computer goes automatically" do
    details_comp
    fight
    expect(page).to have_content("Kirill picked rock!")
  end
end
