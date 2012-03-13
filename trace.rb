module Trace
  def trace(&block)
    set_trace_func proc { |event, file, line, id, binding, classname|
      puts "[TRACE] #{file}:#{line} #{classname}##{id}" if event == 'call'
    }
    result = block.call
    set_trace_func proc {}
    result
  end
end

Object.send :include, Trace
