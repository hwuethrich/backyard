FactoryGirl.define do

  factory :string do |f| end
  factory :array do |f| end
  factory :hash do |f| end
  factory :my_string_factory, :class => 'String' do |f| end
  factory :my_hash_factory, :class => Hash do |f| end

  require File.join(File.dirname(__FILE__), 'models')

  factory :user do |f|
    f.username 'John Doe'
  end

  factory :account do |f|
    f.description '<missing>'
  end

end
