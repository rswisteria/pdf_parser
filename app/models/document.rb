class Document < ApplicationRecord
  belongs_to :user
  has_one_attached :pdf_file

  validates :title, presence: true
  validates :pdf_file, presence: true, on: :create
  validates :pdf_file, content_type: { in: "application/pdf", message: "must be a PDF file" }

  enum :status, {
    pending: 0,
    processing: 1,
    completed: 2,
    failed: 3
  }
end
