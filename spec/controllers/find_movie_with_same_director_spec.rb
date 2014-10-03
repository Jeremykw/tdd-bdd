require 'spec_helper'

describe MoviesController do 
	before do
		FactoryGirl.create(:movie, 
			id: 1,
		    title: "Star Wars",
		    rating: "PG",
		    director: "Ridley Scott",
		    release_date: "1977-05-25"
		    )
		FactoryGirl.create(:movie, 
			id: 2,
		    title: "Blade Runner",
		    rating: "PG",
		    director: "Ridley Scott",
		    release_date: "1977-05-25"
		    )
	end
=begin

  factory :movies do
    id "3"
    title "Alien "
    rating "R"
    director ""
    release_date "1979-05-25"
  end

  factory :movies do
    id "4"
    title "THX-1138"
    rating "R"
    director "George Lucas"
    release_date "1971-03-11"
  end
=end
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
	describe 'search by director' do
		describe MoviesController do 

			it 'calls #search_director' do
				movie = Movie.find(1)
				#movie.id.should == 1
				movie.title.should == 'Star Wars'
				#Movie.should_receive(:find_all_by_director).with('George Lucas')
				#post :show, {:search_director => 'George Lucas'}
			end
		end
	end

end
