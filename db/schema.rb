# Schema
ActiveRecord::Schema.define(version: 201_504_200_013_41) do
  create_table 'abouts', force: :cascade do |t|
    t.text 'content',    limit: 655_35
    t.string 'image',      limit: 255
    t.datetime 'created_at',               null: false
    t.datetime 'updated_at',               null: false
  end

  create_table 'active_admin_comments', force: :cascade do |t|
    t.string 'namespace',     limit: 255
    t.text 'body',          limit: 655_35
    t.string 'resource_id',   limit: 255,   null: false
    t.string 'resource_type', limit: 255,   null: false
    t.integer 'author_id',     limit: 4
    t.string 'author_type',   limit: 255
    t.datetime 'created_at'
    t.datetime 'updated_at'
  end

  add_index 'active_admin_comments', %w(author_type, author_id),
            name: 'index_active_admin_comments_on_author_type_and_author_id',
            using: :btree
  add_index 'active_admin_comments', ['namespace'],
            name: 'index_active_admin_comments_on_namespace',
            using: :btree
  add_index 'active_admin_comments', %w(resource_type, resource_id),
            name:
            'index_active_admin_comments_on_resource_type_and_resource_id',
            using: :btree

  create_table 'admin_users', force: :cascade do |t|
    t.string 'email',                  limit: 255, default: '', null: false
    t.string 'encrypted_password',     limit: 255, default: '', null: false
    t.string 'reset_password_token',   limit: 255
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count',          limit: 4,   default: 0,  null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip',     limit: 255
    t.string 'last_sign_in_ip',        limit: 255
    t.datetime 'created_at'
    t.datetime 'updated_at'
  end

  add_index 'admin_users', ['email'],
            name: 'index_admin_users_on_email', unique: true, using: :btree
  add_index 'admin_users', ['reset_password_token'],
            name: 'index_admin_users_on_reset_password_token', unique: true,
            using: :btree

  create_table 'categories', force: :cascade do |t|
    t.string 'cat_name',   limit: 255
    t.datetime 'created_at',             null: false
    t.datetime 'updated_at',             null: false
    t.string 'image',      limit: 255
  end

  create_table 'contacts', force: :cascade do |t|
    t.text 'content',    limit: 655_35
    t.integer 'phone',      limit: 4
    t.string 'email',      limit: 255
    t.float 'lat',        limit: 24
    t.float 'lng',        limit: 24
    t.datetime 'created_at',               null: false
    t.datetime 'updated_at',               null: false
  end

  create_table 'games', force: :cascade do |t|
    t.string 'title',        limit: 255
    t.integer 'release_year', limit: 4
    t.float 'price',        limit: 24
    t.text 'description',  limit: 655_35
    t.string 'poster_url',   limit: 255
    t.datetime 'created_at',                 null: false
    t.datetime 'updated_at',                 null: false
    t.integer 'cat_id',       limit: 4
    t.integer 'category_id',  limit: 4
  end

  add_index 'games', ['category_id'],
            name: 'index_games_on_category_id', using: :btree

  create_table 'users', force: :cascade do |t|
    t.string 'email',                  limit: 255, default: '', null: false
    t.string 'encrypted_password',     limit: 255, default: '', null: false
    t.string 'reset_password_token',   limit: 255
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count',          limit: 4,   default: 0,  null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip',     limit: 255
    t.string 'last_sign_in_ip',        limit: 255
    t.datetime 'created_at'
    t.datetime 'updated_at'
  end

  add_index 'users', ['email'],
            name: 'index_users_on_email', unique: true, using: :btree
  add_index 'users', ['reset_password_token'],
            name: 'index_users_on_reset_password_token', unique: true,
            using: :btree
  add_foreign_key 'games', 'categories'
end
