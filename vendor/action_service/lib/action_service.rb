require "action_service/version"
require "super_module"

module Service
  include SuperModule

  def initialize *args
    @init_params = *args
    init_assigned_params
  end

  def init_assigned_params
    class << self.class; attr_accessor :assigned_params end
    unless self.class.assigned_params.blank?
      initialize_with
    end
  end

  def self.call(*args)
    new(*args).call
  end

  def initialize_with
    self.class.assigned_params.each_with_index do |name, index|
      var_name = "@#{name}"
      instance_variable_set(var_name, @init_params[index])
    end
  end

end
