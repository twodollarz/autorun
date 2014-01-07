require 'spec_helper'

describe Autorun do
  let(:klass) do
    Class.new do
      include Autorun
      def run
      end
    end
  end

  describe :included do
    it 'can be included by a class' do
      klass.ancestors.should include Autorun
    end
  end

  describe :is_at_exit_added? do
    it 'should be true' do
      Autorun.is_at_exit_added?.should be_true
    end
  end

  describe :is_at_exit_added= do
    before { Autorun.is_at_exit_added = false }
    it 'should change the value' do
      Autorun.is_at_exit_added?.should be_false
    end
  end

  describe :run do
    it 'runs included class' do
      klass.any_instance.should_receive(:run)
      Autorun.run
    end
  end
end
