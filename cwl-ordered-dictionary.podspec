Pod::Spec.new do |s|
  s.name         = "cwl-ordered-dictionary"
  s.version      = "0.1.0"
  s.summary      = "OrderedDictionary, an NSMutableDictionary subclass that maintains ordering of its keys."
  s.description  = <<-DESC
					OrderedDictionary, an NSMutableDictionary subclass that maintains ordering of its keys.

					The original code was written by Matt Gallagher, found in his blog OrderedDictionary: http://www.cocoawithlove.com/2008/12/ordereddictionary-subclassing-cocoa.html.
                   DESC
  s.author       = "Matt Gallagher"
  s.homepage     = "https://github.com/pokelabo/cwl-ordered-dictionary"
  s.license      = { :type => 'zlib', :text => <<-LICENSE
						Copyright (c) 2009-2011 Matt Gallagher. All rights reserved.

						This software is provided 'as-is', without any express or implied warranty. In no event will the authors be held liable for any damages arising from the use of this software. Permission is granted to anyone to use this software for any purpose, including commercial applications, and to alter it and redistribute it freely, subject to the following restrictions:

						The origin of this software must not be misrepresented; you must not claim that you wrote the original software. If you use this software in a product, an acknowledgment in the product documentation would be appreciated but is not required.
						Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.
						This notice may not be removed or altered from any source distribution.
                 LICENSE
                 	}
  s.source       = { :git => 'https://github.com/pokelabo/cwl-ordered-dictionary.git', :tag => s.version.to_s }
  s.platform     = :ios, '4.3'
  s.source_files = 'OrderedDictionary/OrderedDictionary/CWLOrderedDictionary.{h,m}'
  s.requires_arc = true
end
