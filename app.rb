require_relative './list_books'
require_relative './list_label'
require_relative './game_list'
require_relative './author_list'
require_relative './genre_list'
require_relative './music_album_list'

class App
  attr_accessor :books, :games, :labels, :authors, :genres, :musics

  def initialize
    @books = ListBooks.new
    @games = GameList.new
    @labels = ListLabel.new
    @authors = AuthorList.new
    @genres = GenreList.new
    @musics = MusicList.new
  end

  def obtain_data
    @books.load_books
    @games.obtain_games
    @labels.load_labels
    @authors.obtain_authors
    @genres.display_genres
    @musics.show_albums
  end

  def save_data
    @books.save_books
    @games.save_games
    @labels.save_labels
    @authors.save_authors
    @genres.save_genres
    @musics.save_albums
  end
end
