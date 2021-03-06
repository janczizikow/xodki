# frozen_string_literal: true

class KmlUploader < CarrierWave::Uploader::Base
  storage :fog
  # storage :file

  def extension_whitelist
    %w[kml kmz]
  end

  def size_range
    1..10.megabytes
  end
end
