# Cloudinary.config do |config|
#     config.cloud_name = ENV['CLOUDINARY_URL']
#     config.api_key = '396351942667458'
#     config.api_secret = '2Uq70Hob2jA7i-Q1ibdTCx8eW9o'
#     config.secure = true
#     config.cdn_subdomain = true
#   end

Cloudinary.config do |config|
    config.cloud_name = ENV['cloud_name']
    config.api_key = ENV['api_key']
    config.api_secret = ENV['api_secret']
    config.secure = true
    config.cdn_subdomain = true
end