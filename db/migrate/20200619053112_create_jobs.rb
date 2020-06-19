class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.text :uid, unique: true,index: true
      t.text :title,index: true
      t.text :description,index: true
      t.boolean :status, default: true
      t.datetime :publish_date,index: true
      t.integer :vacancy, default: 1 
      t.text :salary_rang, array: true, default:[]
      t.text :job_types, array: true, default:[]
      t.text :compensation_types, array: true, default:[]
      t.belongs_to :company

      t.timestamps
    end
  end
end
