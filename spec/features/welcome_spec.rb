feature 'Welcome' do
  scenario 'Says the players name back to them after entry' do
    add_suzy
    expect(page).to have_content "Welcome Suzy!!! Have a shiney light!!!"
  end
end
