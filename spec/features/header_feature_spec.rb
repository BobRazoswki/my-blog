require 'rails_helper'

describe 'menu display' do
	context 'if logged out' do

		it 'display sign in' do
			visit('/')
			expect(page).to have_content('Sign in')
		end

		it 'display sign up' do
			visit('/')
			expect(page).to have_content('Sign up')
		end

	end

	context 'if logged in' do
		
		before(:each) do
			bob = create(:user)
			login_as bob
		end
	
		it 'display sign out' do
			visit('/')
			expect(page).to have_content('Sign out')
		end

	end

end