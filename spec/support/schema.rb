ActiveRecord::Schema.define do
  self.verbose = false

  create_table :addresses, :force => true do |t|
    t.string :city
    t.string :can_be_type
    t.timestamps
  end

  create_table :people, :force => true do |t|
    t.string :gender
    t.timestamps
  end

  create_table :uploads, :force => true do |t|
    t.string :can_be_type
    t.integer :details_id
    t.string :details_type
    t.timestamps
  end

  create_table :image_upload_details, :force => true do |t|
    t.string :format
    t.timestamps
  end

  create_table :video_upload_details, :force => true do |t|
    t.string :encoding
    t.timestamps
  end

  create_table :thumbnail_upload_details, :force => true do |t|
    t.timestamps
  end

  create_table :config_spec_models, :force => true do |t|
    t.string :can_be_type
    t.timestamps
  end

  create_table :config_spec_details, :force => true do |t|
    t.timestamps
  end

  create_table :config_spec_details2, :force => true do |t|
    t.timestamps
  end
end