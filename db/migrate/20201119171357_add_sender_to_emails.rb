class AddSenderToEmails < ActiveRecord::Migration[5.2]
  def change
    add_column :emails, :sender, :string
  end
end
