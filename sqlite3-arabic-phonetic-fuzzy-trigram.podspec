#
# Be sure to run `pod lib lint sqlite3-arabic-phonetic-fuzzy-trigram.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'sqlite3-arabic-phonetic-fuzzy-trigram'
  s.version          = '0.2.0'
  s.summary          = 'SQLite FTS5 Arabic Phonetic Fuzzy Trigram Tokenizer'


  s.description      = <<-DESC
A custom SQLite FTS5 tokenizer designed for Arabic and Latin text with diacritics support, phonetic matching, and fuzzy search capabilities.
                       DESC

  s.homepage         = 'https://github.com/Greentech-Apps-Limited/sqlite3-arabic-phonetic-fuzzy-trigram-pod'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Shahriar Nasim Nafi' => 'shahriarnasim.nafi@gmail.com' }
  s.source           = { :git => 'https://github.com/Greentech-Apps-Limited/sqlite3-arabic-phonetic-fuzzy-trigram-pod', :tag => s.version.to_s }


  s.ios.deployment_target  = '14.0'
  s.osx.deployment_target  = '10.13'

  # The tokenizer .c and all its headers live together in one flat folder, so
  # every #include resolves by same-folder adjacency — the pod's original,
  # known-good behavior. (The same flat folder also serves as the SwiftPM
  # target; see Package.swift.)
  #
  # Only the tokenizer .{h,c} is compiled and exposed. sqlite3.h / sqlite3ext.h
  # are kept via preserve_paths — present next to the source so the compile
  # resolves them, but NOT registered as managed pod headers (so CocoaPods does
  # not relocate them into Headers/, which is what broke consumers). The SQLite
  # amalgamation (sqlite3.c) is intentionally NOT compiled — the extension binds
  # to the host app's SQLite (via sqlite3_api) at runtime.
  s.source_files        = 'Sources/CSQLiteArabicPhoneticFuzzyTrigram/sqlite3-arabic-phonetic-fuzzy-trigram.{h,c}'
  s.public_header_files = 'Sources/CSQLiteArabicPhoneticFuzzyTrigram/sqlite3-arabic-phonetic-fuzzy-trigram.h'
  s.preserve_paths      = 'Sources/CSQLiteArabicPhoneticFuzzyTrigram/*.{c,h}'
  s.requires_arc = false

end
