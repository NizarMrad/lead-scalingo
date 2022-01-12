# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_29_182238) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'action_text_rich_texts', force: :cascade do |t|
    t.string 'name', null: false
    t.text 'body'
    t.string 'record_type', null: false
    t.bigint 'record_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index %w[record_type record_id name],
            name: 'index_action_text_rich_texts_uniqueness',
            unique: true
  end

  create_table 'active_storage_attachments', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'record_type', null: false
    t.bigint 'record_id', null: false
    t.bigint 'blob_id', null: false
    t.datetime 'created_at', null: false
    t.index ['blob_id'], name: 'index_active_storage_attachments_on_blob_id'
    t.index %w[record_type record_id name blob_id],
            name: 'index_active_storage_attachments_uniqueness',
            unique: true
  end

  create_table 'active_storage_blobs', force: :cascade do |t|
    t.string 'key', null: false
    t.string 'filename', null: false
    t.string 'content_type'
    t.text 'metadata'
    t.string 'service_name', null: false
    t.bigint 'byte_size', null: false
    t.string 'checksum', null: false
    t.datetime 'created_at', null: false
    t.index ['key'], name: 'index_active_storage_blobs_on_key', unique: true
  end

  create_table 'active_storage_variant_records', force: :cascade do |t|
    t.bigint 'blob_id', null: false
    t.string 'variation_digest', null: false
    t.index %w[blob_id variation_digest],
            name: 'index_active_storage_variant_records_uniqueness',
            unique: true
  end

  create_table 'answers', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.bigint 'comment_id', null: false
    t.text 'body'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['comment_id'], name: 'index_answers_on_comment_id'
    t.index ['user_id'], name: 'index_answers_on_user_id'
  end

  create_table 'appointements', force: :cascade do |t|
    t.text 'motif'
    t.datetime 'date'
    t.bigint 'user_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['user_id'], name: 'index_appointements_on_user_id'
  end

  create_table 'comments', force: :cascade do |t|
    t.string 'subject'
    t.text 'body'
    t.bigint 'user_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['user_id'], name: 'index_comments_on_user_id'
  end

  create_table 'contentwebs', force: :cascade do |t|
    t.text 'header'
    t.text 'header2'
    t.text 'header3'
    t.text 'header4'
    t.text 'contentmain'
    t.text 'content2'
    t.text 'content3'
    t.text 'content4'
    t.text 'content5'
    t.bigint 'user_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'nom_site'
    t.string 'titre_hero'
    t.string 'slogan'
    t.string 'descrp_title_1'
    t.string 'descrp_title_2'
    t.string 'descrp_title_3'
    t.string 'descrp_title_4'
    t.string 'descrp_sub_title_1'
    t.string 'descrp_sub_title_2'
    t.string 'descrp_sub_title_3'
    t.string 'descrp_sub_title_4'
    t.text 'descrp_text_1'
    t.text 'descrp_text_2'
    t.text 'descrp_text_3'
    t.text 'descrp_text_4'
    t.string 'header5'
    t.string 'header6'
    t.string 'sub_header1'
    t.string 'sub_header2'
    t.string 'sub_header3'
    t.string 'sub_header4'
    t.string 'sub_header5'
    t.string 'sub_header6'
    t.text 'content6'
    t.index ['user_id'], name: 'index_contentwebs_on_user_id'
  end

  create_table 'facebookmodifs', force: :cascade do |t|
    t.text 'change1'
    t.text 'change2'
    t.text 'change3'
    t.bigint 'user_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['user_id'], name: 'index_facebookmodifs_on_user_id'
  end

  create_table 'googlemodifs', force: :cascade do |t|
    t.text 'change1'
    t.text 'change2'
    t.text 'change3'
    t.bigint 'user_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['user_id'], name: 'index_googlemodifs_on_user_id'
  end

  create_table 'notifications', force: :cascade do |t|
    t.bigint 'comment_id', null: false
    t.bigint 'answer_id', null: false
    t.bigint 'user_id', null: false
    t.boolean 'read'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['answer_id'], name: 'index_notifications_on_answer_id'
    t.index ['comment_id'], name: 'index_notifications_on_comment_id'
    t.index ['user_id'], name: 'index_notifications_on_user_id'
  end

  create_table 'pages', force: :cascade do |t|
    t.bigint 'contentweb_id', null: false
    t.bigint 'user_id', null: false
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'title1'
    t.string 'title2'
    t.string 'title3'
    t.string 'title4'
    t.string 'title5'
    t.string 'title6'
    t.string 'subtitle1'
    t.string 'subtitle2'
    t.string 'subtitle3'
    t.string 'subtitle4'
    t.string 'subtitle5'
    t.string 'subtitle6'
    t.text 'text1'
    t.text 'text2'
    t.text 'text3'
    t.text 'text4'
    t.text 'text5'
    t.text 'text6'
    t.index ['contentweb_id'], name: 'index_pages_on_contentweb_id'
    t.index ['user_id'], name: 'index_pages_on_user_id'
  end

  create_table 'pay_charges', force: :cascade do |t|
    t.bigint 'customer_id', null: false
    t.bigint 'subscription_id'
    t.string 'processor_id', null: false
    t.integer 'amount', null: false
    t.string 'currency'
    t.integer 'application_fee_amount'
    t.integer 'amount_refunded'
    t.jsonb 'metadata'
    t.jsonb 'data'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index %w[customer_id processor_id],
            name: 'index_pay_charges_on_customer_id_and_processor_id',
            unique: true
    t.index ['subscription_id'], name: 'index_pay_charges_on_subscription_id'
  end

  create_table 'pay_customers', force: :cascade do |t|
    t.string 'owner_type'
    t.bigint 'owner_id'
    t.string 'processor', null: false
    t.string 'processor_id'
    t.boolean 'default'
    t.jsonb 'data'
    t.datetime 'deleted_at'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index %w[owner_type owner_id deleted_at default],
            name: 'pay_customer_owner_index'
    t.index %w[processor processor_id],
            name: 'index_pay_customers_on_processor_and_processor_id',
            unique: true
  end

  create_table 'pay_merchants', force: :cascade do |t|
    t.string 'owner_type'
    t.bigint 'owner_id'
    t.string 'processor', null: false
    t.string 'processor_id'
    t.boolean 'default'
    t.jsonb 'data'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index %w[owner_type owner_id processor],
            name: 'index_pay_merchants_on_owner_type_and_owner_id_and_processor'
  end

  create_table 'pay_payment_methods', force: :cascade do |t|
    t.bigint 'customer_id', null: false
    t.string 'processor_id', null: false
    t.boolean 'default'
    t.string 'type'
    t.jsonb 'data'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index %w[customer_id processor_id],
            name: 'index_pay_payment_methods_on_customer_id_and_processor_id',
            unique: true
  end

  create_table 'pay_subscriptions', force: :cascade do |t|
    t.bigint 'customer_id', null: false
    t.string 'name', null: false
    t.string 'processor_id', null: false
    t.string 'processor_plan', null: false
    t.integer 'quantity', default: 1, null: false
    t.string 'status', null: false
    t.datetime 'trial_ends_at'
    t.datetime 'ends_at'
    t.decimal 'application_fee_percent', precision: 8, scale: 2
    t.jsonb 'metadata'
    t.jsonb 'data'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index %w[customer_id processor_id],
            name: 'index_pay_subscriptions_on_customer_id_and_processor_id',
            unique: true
  end

  create_table 'pay_webhooks', force: :cascade do |t|
    t.string 'processor'
    t.string 'event_type'
    t.jsonb 'event'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'tokkens', force: :cascade do |t|
    t.text 'fbTokken'
    t.text 'gTokken'
    t.bigint 'user_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['user_id'], name: 'index_tokkens_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'attr'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'],
            name: 'index_users_on_reset_password_token',
            unique: true
  end

  create_table 'webmodifs', force: :cascade do |t|
    t.text 'change1'
    t.text 'change2'
    t.text 'change3'
    t.bigint 'user_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['user_id'], name: 'index_webmodifs_on_user_id'
  end

  create_table 'words', force: :cascade do |t|
    t.string 'title'
    t.text 'body'
    t.bigint 'user_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['user_id'], name: 'index_words_on_user_id'
  end

  add_foreign_key 'active_storage_attachments',
                  'active_storage_blobs',
                  column: 'blob_id'
  add_foreign_key 'active_storage_variant_records',
                  'active_storage_blobs',
                  column: 'blob_id'
  add_foreign_key 'answers', 'comments'
  add_foreign_key 'answers', 'users'
  add_foreign_key 'appointements', 'users'
  add_foreign_key 'comments', 'users'
  add_foreign_key 'contentwebs', 'users'
  add_foreign_key 'facebookmodifs', 'users'
  add_foreign_key 'googlemodifs', 'users'
  add_foreign_key 'notifications', 'answers'
  add_foreign_key 'notifications', 'comments'
  add_foreign_key 'notifications', 'users'
  add_foreign_key 'pages', 'contentwebs'
  add_foreign_key 'pages', 'users'
  add_foreign_key 'pay_charges', 'pay_customers', column: 'customer_id'
  add_foreign_key 'pay_charges', 'pay_subscriptions', column: 'subscription_id'
  add_foreign_key 'pay_payment_methods', 'pay_customers', column: 'customer_id'
  add_foreign_key 'pay_subscriptions', 'pay_customers', column: 'customer_id'
  add_foreign_key 'tokkens', 'users'
  add_foreign_key 'webmodifs', 'users'
  add_foreign_key 'words', 'users'
end
