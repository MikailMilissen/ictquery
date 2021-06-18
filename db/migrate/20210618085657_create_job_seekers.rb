class CreateJobSeekers < ActiveRecord::Migration[6.1]
  def change
    create_table :job_seekers do |t|
      t.string :user_namer
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
