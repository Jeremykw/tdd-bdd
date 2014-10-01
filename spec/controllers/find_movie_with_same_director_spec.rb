require 'spec_helper'

describe MoviesController do 
	before :each do
		@movie = Movie.new
		@movie.title = 'Star Wars'
		@movie.director = 'George Lucas'
	end
	describe 'create movie' do
		it 'creates a movie' do
			lambda{
				@movie = Movie.create(:title => 'Starwars', :director => 'George Lucas')
			}.should change(Movie, :count).by(1)
			@movie.title.should == 'Starwars'
		end
		it 'should leave director blanke is not assigned' do
			@movie = Movie.create(:title => "eat my shorts")
			@movie.director.should be_nil
		end
	end
=begin		describe 'search by director' do
		it 'should call modle method that searches bd for movies with similar directors' do
			@movie.director
			#Movie.should_receive(:find_all_by_director).with('George Lucas')
			#post :show, {:search_director => 'George Lucas'}
		end
	it 'shoule return a list of the right movies' do
			Movie.should_receive(:find_all_by_director).with('George Lucas')
			post :search_director, {:director => 'George Lucas'}
			# then I should see THX-1138

		end

	end
=end
end
