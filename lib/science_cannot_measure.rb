require 'science_cannot_measure/version'

module ScienceCannotMeasure

  def self.included(base)
    [:==, :equal?, :>, :>=, :<, :<=].each do |method|
      begin
        base.send(:remove_method, method)
      rescue Exception
        nil
      end
    end
  end

  def ==(*)
    "they're basically the same"
  end
  alias_method :equal?, :==

  def >(*)
    raise ScienceCannotMeasure::ValuesBasicallyTheSame
  end
  [:>=, :<, :<=].each { |method| alias_method method, :> }

  class ValuesBasicallyTheSame < Exception; end
end

Object.constants.map { |object| Object.const_get(object) }.each do |object|
  object.send :include, ScienceCannotMeasure rescue nil
end
