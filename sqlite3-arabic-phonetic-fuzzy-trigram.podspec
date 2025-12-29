#
# Be sure to run `pod lib lint sqlite3-arabic-phonetic-fuzzy-trigram.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'sqlite3-arabic-phonetic-fuzzy-trigram'
  s.version          = '0.0.2'
  s.summary          = 'SQLite FTS5 Arabic Phonetic Fuzzy Trigram Tokenizer'


  s.description      = <<-DESC
A custom SQLite FTS5 tokenizer designed for Arabic and Latin text with diacritics support, phonetic matching, and fuzzy search capabilities.
                       DESC

  s.homepage         = 'https://github.com/Greentech-Apps-Limited/sqlite3-arabic-phonetic-fuzzy-trigram-pod'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Shahriar Nasim Nafi' => 'shahriarnasim.nafi@gmail.com' }
  s.source           = { :git => 'https://github.com/Greentech-Apps-Limited/sqlite3-arabic-phonetic-fuzzy-trigram-pod', :tag => s.version.to_s }


  s.prepare_command = <<-CMD
            cd sqlite3-arabic-phonetic-fuzzy-trigram/Common/
    make sqlite3-arabic-phonetic-fuzzy-trigram.c
  CMD

  s.ios.deployment_target  = '14.0'
  s.osx.deployment_target  = '10.13'
  s.source_files = 'sqlite3-arabic-phonetic-fuzzy-trigram/Common/sqlite3-arabic-phonetic-fuzzy-trigram.{h,c}'
  s.preserve_paths = 'sqlite3-arabic-phonetic-fuzzy-trigram/Common/*.{c,h}'
  s.public_header_files = 'sqlite3-arabic-phonetic-fuzzy-trigram/Common/sqlite3-arabic-phonetic-fuzzy-trigram.h'
  s.requires_arc = false

end
