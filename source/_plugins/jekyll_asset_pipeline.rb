require 'jekyll_asset_pipeline'

module JekyllAssetPipeline
  class CssCompressor < JekyllAssetPipeline::Compressor
    require 'yui/compressor'

    def self.filetype
      '.css'
    end

    def compress
      return YUI::CssCompressor.new.compress(@content)
    end
  end

  # NOTE: YUI compressor crashes when trying to compress latest version of jQuery so we use more
  # recent closure compiler
  class JavaScriptCompressor < JekyllAssetPipeline::Compressor
    require 'closure-compiler'

    def self.filetype
      '.js'
    end

    def compress
      return Closure::Compiler.new(:language_in => "ECMASCRIPT6").compile(@content)
    end
  end

 # class JavaScriptCompressor < JekyllAssetPipeline::Compressor
 #   require 'yui/compressor'

 #   def self.filetype
 #     '.js'
 #   end

 #   def compress
 #     return YUI::JavaScriptCompressor.new(munge: true).compress(@content)
 #   end
 # end
end
