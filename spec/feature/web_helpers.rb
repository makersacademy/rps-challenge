def name_and_submit
	visit('/')
	fill_in('name', with: "Mabel")
	click_button('submit')
end