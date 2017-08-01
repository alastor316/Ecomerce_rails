# == Schema Information
#
# Table name: link_attachments
#
#  id              :integer          not null, primary key
#  link_id         :integer
#  expiration_date :datetime
#  attachment_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :link_attachment do
    link nil
    expiration_date "2017-07-26 09:40:46"
  end
end
