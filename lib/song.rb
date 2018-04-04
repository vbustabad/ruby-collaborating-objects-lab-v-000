class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name(artist_name)
    @artist_name = artist_name
  end

  def self.new_by_filename(file)
    new_instance = self.new
    new_instance = file.split("-")[1]
    new_instance
  end

end
