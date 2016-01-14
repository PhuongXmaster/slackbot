class User < ActiveRecord::Base
  validates :locale, inclusion: {in: ['en', 'vi'], message: '%{value} must be either en or vi.'}
end
