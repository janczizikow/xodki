CarrierWave.configure do |config|
  # https://stackoverflow.com/questions/56771315/need-to-implement-cache-if-you-want-to-use-cloudinarycarrierwavestorage-as#answer-57995718
  config.cache_storage = :file

  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV['AWS_ACCESS_KEY_ID'],     #
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'], #
    use_iam_profile:       false,                        # optional, defaults to false
    region:                'eu-central-1',               # optional, defaults to 'us-east-1'
    # host:                's3.example.com',             # optional, defaults to nil
    # endpoint:            'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = ENV['AWS_S3_BUCKET_NAME']                             # required
  config.fog_public     = false                                                 # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
end