class Doctor < ActiveRecord::Base
	has_many :resumes
	has_many :procedures
	belongs_to :user
	has_many :tasks, inverse_of: :doctor
	accepts_nested_attributes_for :procedures, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :resumes, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: true
	has_attached_file :image, styles: { medium: "300x300>"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	validates  :name, :website, :phone, :title, presence: true


end
