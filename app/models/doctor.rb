class Doctor < ActiveRecord::Base
	belongs_to :user
	has_many :tasks
	accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: true
	has_attached_file :image, styles: { medium: "300x300>"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	validates  :name, :website, :phone, :title, presence: true


end
