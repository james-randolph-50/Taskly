class User < ApplicationRecord
    has_many :tasks, through :lists
end
