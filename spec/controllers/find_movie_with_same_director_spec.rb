require 'spec_helper'

describe MoviesController, :type => :controller do 
	describe 'search by director' do
		it 'should call modle method that searches bd for movies with similar directors' do
			Movie.should_receive(:find_all_by_director).with('George Lucas')
			post :search_director, {:director => 'George Lucas'}
		end
		it 'shoule return a list of the right movies' do
			Movie.should_receive(:find_all_by_director).with('George Lucas')
			post :search_director, {:director => 'George Lucas'}
			# then I should see THX-1138
		end

	end
end
