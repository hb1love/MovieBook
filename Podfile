platform :ios, '13.0'
workspace 'MovieBook'

inhibit_all_warnings!
use_frameworks!

def rx
  pod 'RxCocoa'
  pod 'RxCodable'
  pod 'RxSwift'
  pod 'RxSwiftExt'
  pod 'RxGesture'
end

def testing
  pod 'Quick'
  pod 'Nimble'
  pod 'Cuckoo' # mocking framework
  pod 'RxTest'
  pod 'RxBlocking'
end

target 'MovieBook' do
  project 'MovieBook/MovieBook'
  rx

  target 'MovieBookTests' do

  end
end

target 'MovieDomain' do
  project 'Movie/Movie'
  rx

  target 'MovieDomainTests' do
    rx
    testing
  end
end
