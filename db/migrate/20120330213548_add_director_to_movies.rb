class AddDirectorToMovies < ActiveRecord::Migration
  DIRECTORS = [
    {:title => 'Star Wars', :rating => 'PG', :release_date => '1977-05-25', :director => 'George Lucas'},
    {:title => 'Blade Runner', :rating => 'PG', :director => 'Ridley Scott', :release_date => '1982-06-25'},
    {:title => 'Alien', :rating => 'R', :release_date => '1979-05-25'},
    {:title => 'THX-1138', :rating => 'R', :director => 'George Lucas', :release_date => '1971-03-11'}
    ]
  def change
    add_column :movies, :director, :string
    DIRECTORS.each do |movie|
      Movie.create!(movie)
    end
  end
end
