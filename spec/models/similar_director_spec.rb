require 'spec_helper'

describe Movie do 
	before do
		FactoryGirl.create(:movie, 
			id: 1,
		    title: "Star Wars",
		    rating: "PG",
		    director: "George Lucas",
		    release_date: "1977-05-25"
		    )
		FactoryGirl.create(:movie, 
			id: 2,
		    title: "Blade Runner",
		    rating: "PG",
		    director: "Ridley Scott",
		    release_date: "1977-05-25"
		    )
		FactoryGirl.create(:movie, 
			id: 3,
		    title: "Alien",
		    rating: "R",
		    director: "",
		    release_date: "1977-05-25"
		    )
		FactoryGirl.create(:movie, 
			id: 4,
		    title: "THX-1138",
		    rating: "R",
		    director: "George Lucas",
		    release_date: "1971-03-1"
		    )
	end
	it 'has finds movie in factory' do
		movie = Movie.find(1)
		movie.title.should == 'Star Wars'
	end
	it "returns a list of movies when movies with similar director exist" do
		Movie.should_receive(:find_all_by_director).with("George Lucas")
		post :similar_director, {:id => 1}
		#@movies.should == 4

	end
	it 'returns nil when no movies have Similar director' do

	end
	it "returns nil when director == '' " do

	end
	
end