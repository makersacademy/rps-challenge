feature "Testing infrastructure working!" do
    scenario "user visits page" do
    visit '/'
    expect(page).to have_content "Testing infrastructure working!"
    end
end
