Pod::Spec.new do |s|
  s.name         = "GSImageViewer"
  s.version      = "1.0.0"
  s.summary      = "GSImageViewer is an easy to use image viewer, which support multiple images and web image prefetch."
  s.description  = <<-DESC
                    GSImageViewer is an easy to use image viewer, which support multiple images and web image prefetch.
                   DESC
  s.homepage     = "https://github.com/Chren/GSImageViewer"
  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author             = { "Aren" => "aren372@126.com" }
  s.platform = :ios, '7.0'
  s.source = { :git => 'https://github.com/Chren/GSImageViewer.git', :tag => '1.0.0' }
  s.source_files = 'GSImagePreview/*.{h,m}'
  s.resources = ['GSImagePreview/*.{xib}', 'GSImagePreview/Resources/GSImagePreview.bundle', 'GSImagePreview/Resources/Localizations/**']
  s.requires_arc = true
  s.dependency 'SDWebImage', '~> 3.7.3'
end