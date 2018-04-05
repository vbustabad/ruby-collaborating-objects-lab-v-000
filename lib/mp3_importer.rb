class MP3Importer

  attr_accessor :path, :file_array

  def initialize(path)
    @path = path
  end

  def files
    file_array = Dir.glob("#{path}/*.mp3").collect do |file|
      file_name = file.split("/")[4]
    end
  end

  def import
    self.file_array.each do |file|
      Song.new_by_filename(file)
    end
  end

end
