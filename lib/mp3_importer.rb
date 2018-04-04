class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{path}/*.mp3").collect do |file|
      file.split(/$'./././mp3s'/)[1]
    end
  end

  def import
    files.each{ |file| Song.new_by_filename(filename) }
  end

end
