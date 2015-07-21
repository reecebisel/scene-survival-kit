require 'rails_helper'

	feature "home" do

		scenario "sign up" do
		visit root_path
		click_link "Sign Up"
		fill_in "Full name", with: "Test User"
		fill_in "Email", with: "test@mail.com"
		fill_in "Password", with: "password"
		fill_in "Password confirmation", with: "password"
		click_button "Sign up"
		expect(page).to have_content("NEW PROFILE")
		end

		# scenario "log in" do
		# user = User.create!(full_name: 'Test Two', email: 'two@mail.com', password: 'password', password_confirmation: 'password')
		# visit root_path
		# click_link "Login"
		# fill_in 
		
	end

