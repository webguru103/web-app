FactoryBot.define do
  factory :user do
    first_name 'Fiona'
    last_name 'Adler'
    display_name 'Fiona'
    timezone 'UTC'
    email 'fiona.adler@outmarket.com.au'
    password 'Sdfgs9834lk9E$T6DFAgljr'
    password_confirmation 'Sdfgs9834lk9E$T6DFAgljr'
    avatar do
      File.open(File.join(Rails.root, 'spec', 'factories', 'test_image.png'))
    end
  end
end