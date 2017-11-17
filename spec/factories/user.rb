FactoryBot.define do
  factory :user do
    first_name 'Fiona'
    last_name 'Adler'
    display_name 'Fiona'
    timezone 'UTC'
    email 'fiona.adler@outmarket.com.au'
    password 'Sdfgs9834lk9E$T6DFAgljr'
    password_confirmation 'Sdfgs9834lk9E$T6DFAgljr'
    avatar { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'factories', 'test_image.png'), 'image/png') }
  end
end