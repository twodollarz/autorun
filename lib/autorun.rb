require 'autorun/version'

module Autorun
  @run_classes = []
  @is_at_exit  = false

  def self.included(base)
    @run_classes << base
  end

  def self.run
    @run_classes.each do |run_class|
      run_class.new.run
    end
  end

  def self.is_at_exit_added?
    @is_at_exit
  end

  def self.is_at_exit_added=(bool)
    @is_at_exit = bool
  end
end

unless Autorun.is_at_exit_added?
  at_exit do
    Autorun.run if $!.nil?
  end
  Autorun.is_at_exit_added = true
end
