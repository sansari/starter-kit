# StarterKit

A simple XCode starter project that does a few things:

1) Removes the main Storyboard, and instead uses a programmatic initialization of a simple navigation controller as the root, with a basic UIViewController loaded.

2) Adds Cocoapods with a target of iOS 7.0, and a single pod (see #3 below), and configured already so that you work with the project using the .xcworkspace file.

3) Adds the 'Masonry' gem (see https://github.com/Masonry/Masonry), which is my favorite pod in the whole wide world. It lets you generate AutoLayout constraints with incredible ease, simplicity, and super-short syntax.

4) Adds a prefix header file that declares the Masonry shorthand syntax.

I created this project because I never use Storyboards, I always use programmatic view generation (with AutoLayout), and I use Masonry to do the AL code generation. I use this as a quick way to get started when I want to test stuff out.

If you happen to use the same workflow as me, you might find this useful.

Thanks!


# Setup

* Git clone this repository locally
* Make sure you have cocoapods gem installed (this was generated using cocoapods v0.36.3), and then do a 'pod install' to ensure it's working well for you
* Open the project using the .xcworkspace file (with cocoapods, always open that file, not the .xcodeproj file)
* Run the app

# Customization

* You can remove the LaunchScreen.xib file if you wish, or modify it. If you do remove it, make sure to also remove it from the project settings. I left it there because even though I don't use XIB files, it's not a bad way to make a simple launch screen.
* You can start modifying code in the MainViewController.m `viewDidLoad` method. There is a simple top banner there, so you can use that a sample to get going.

Happy coding!
