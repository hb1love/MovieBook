platform :ios, '13.0'
workspace 'MovieBook'

inhibit_all_warnings!
use_frameworks!

def rx
  pod 'RxCocoa', '5.1.3'
  pod 'RxCodable', '1.0.0'
  pod 'RxSwift', '5.1.3'
  pod 'RxSwiftExt', '5.2.0'
  pod 'RxGesture', '3.0.2'
end

def testing
  pod 'Quick', '4.0.0'
  pod 'Nimble', '9.2.1'
  pod 'Cuckoo', '1.2.0' # mocking framework
  pod 'RxTest', '5.1.3'
  pod 'RxBlocking', '5.1.3'
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
