# Testing Realm in Swift Playgrounds

If you look around there is alot of noise. There is a command-line tool called [cocoapods-playgrounds](https://github.com/neonichu/ThisCouldBeUsButYouPlaying)that is easy to install using gem install... 

To Install: 
```swift
gem install cocoapods-playgrounds
```

but... at this point I haven't been able to get it to work with Xcode 9.2 and Swift 4.0.2... So manual work it is !!!

## Manual Installation
1. Create Blak Xcode Project
2. Exit the project go to your project directory in Terminal and `Pod init`
3. Edit Podfile with:
```
# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

target 'RealmSwiftPlayground' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for RealmSwiftPlayground
  pod 'RealmSwift'

end
```

4.  Run `Pod Install` and wait for the framework to completely download
5.  Open the Xcode Workspace 
6.  Create a Blank Swift Playgrounds and save it
7.  Drag the playgrounds to the Project inside Xcode Workspace... 
8.  Wait until if finnishes building and compiling the project... it may take a while ... 
9.  😎 Enjoy!!!

or you can simply download this [RealmSwift Playgrounds Template Project](https://github.com/oliverbarreto/RealmSwiftPlaygroundsBaseTemplate)

