class Post < ApplicationRecord
  mount_uploaders :files, FilesUploader
end
