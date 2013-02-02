class AddAttachmentResumeUrlToMembers < ActiveRecord::Migration
  def self.up
    change_table :members do |t|
      t.attachment :resume_url
    end
  end

  def self.down
    drop_attached_file :members, :resume_url
  end
end
