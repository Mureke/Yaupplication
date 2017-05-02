class Project < ActiveRecord::Base
# app/models/document.rb
  validate :file_size_under_two_mb

  def initialize(params = {})
    file = params.delete(:file)
    super
    if file
      self.filename = sanitize_filename(file.original_filename)
      self.content_type = file.content_type
      self.file_contents = file.read
    end
  end

  private
  def sanitize_filename(filename)
    return File.basename(filename)
  end

  NUM_BYTES_IN_MEGABYTE = 209514
  def file_size_under_two_mb
    if (@file.size.to_f / NUM_BYTES_IN_MEGABYTE) > 1
      errors.add(:file, 'File size cannot be over one megabyte.')
    end
  end
end
