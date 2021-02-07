class Post < ApplicationRecord
  validate :title, presence: true,
                   length {maximum:50}
end
