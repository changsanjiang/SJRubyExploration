
=begin 在 @interface 与 @end 之间需要写入的内容
 
 readonly. (忽略 readwrite)的行
 
 需要记录的内容:
 readonly 属性的(修饰, 类型, 名称)
 
=end

=begin
 需要记录的内容:
 属性的(修饰, 类型, 名称)
=end


=begin 在 @implementation 与 @end 之间需要写入的内容
 
 1. 生成的 readonly 的属性实例内容
 2. getter 方法
 
 需要获取的内容
 属性的(修饰, 类型, 名称)
 
=end

class Property
    attr_accessor :xiuShi, :type, :name

    def initialize(xiuShi:, type:, name:)
        @xiuShi, @type, @name = xiuShi, type, name
    end
end



class Recorder
    attr_accessor :interface, :implementation, :parseInterface, :parseImplementation
    
    def initialize()
        @interface = String.new
        @implementation = String.new
        
        @parseInterface = false
        @parseImplementation = false
    end
    
    def parsing(line:)
        if /@interface/ =~ line then
            self.parseInterface = true
        end
        
        if /@implementation/ =~ line then
            self.parseImplementation = true
        end
        
        if /@end/ =~ line then
            if self.parseInterface then
                self.parseInterface = false
            end
            
            if self.parseImplementation then
                self.parseImplementation = false
            end
        end
    end

    def parseInterface=(result)
        @parseInterface = result
        
        if result then
            puts "开始解析 interface"
        else
            puts "解析完毕 interface"
        end
    end

    def parseImplementation=(result)
        @parseImplementation = result
        
        if result then
            puts "开始解析 implementation"
        else
            puts "解析完毕 implementation"
        end
    end

end



def readFile()
#    puts "Please Enter Your File Path:"
#    input = gets
#
#    filePath = input.chomp!.gsub!(/\s/, "")
    filePath = "/Users/bluedancer/Desktop/RubyTest/test.m"
    file = File.new(filePath, "r")
end

# -------------------

BEGIN {
    
}

recorder = Recorder.new

file = readFile
file.each_line do |line|
    recorder.parsing(line: line)
end

END {
    
}
