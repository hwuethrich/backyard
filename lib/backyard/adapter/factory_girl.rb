class Backyard::Adapter::FactoryGirl < Backyard::Adapter

  def class_for_type(model_type)
    factory = factories[model_type.to_sym]
    raise ArgumentError, "no factory for: #{model_type}\ngot: #{factories.keys}" unless factory
    factory.build_class
  end

  def create(model_type, attributes)
    self.class.factory_girl_class.create(model_type, attributes)
  end

  def factories
    self.class.factory_girl_class.factories
  end

  def self.factory_girl_class
    ::FactoryGirl
  end

end
