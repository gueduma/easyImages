class ImagemUploader < CarrierWave::Uploader::Base

  storage :file
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end
  
  def original_filename= name
  @original_filename = name
  end
  
  def filename
    if(file.extension.present?)
      "#{original_filename}" if original_filename.present?
    else
      "#{original_filename}.#{file.extension}" if original_filename.present?
    end
  end

end
