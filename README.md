# GSImageViewer
GSImageViewer is a simple and easy to use image viewer. It supports basic image viewing, scaling, saving, you can set two kind of datasource: a collection of UIImages or a collection of web image urls. It also support prefetch when sliding.

![GSImageViewer](https://github.com/Chren/GSImageViewer/blob/master/GSImageViewerExample/ScreenShot/screenshot.jpg?raw=true)
## Howto Install
### Install with CocoaPods
[CocoaPods](http://cocoapods.org/) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries in your projects. See the [Get Started](http://cocoapods.org/#get_started) section for more details.

#### Podfile
```
platform :ios, '7.0'
pod 'GSImageViewer', '~>1.0.1'
```
### Install manually
- Clone GSImageViewer repository.
```
git clone --recursive https://github.com/Chren/GSImageViewer.git
```
- Clone SDWebImage repository.
```
git clone --recursive https://github.com/rs/SDWebImage.git
```
- Add GSImageViewer, SDWebImage to your project.

## Usage
- DataSource with UIImage
```
    NSArray *dataSource = @[[UIImage imageNamed:@"image1"], [UIImage imageNamed:@"image2"], [UIImage imageNamed:@"image3"]];
    GSImageCollectionViewController *imageCollectionVC = [GSImageCollectionViewController viewControllerWithDataSource:dataSource];
    [self.navigationController pushViewController:imageCollectionVC animated:YES];
```
- DataSource with web image url
```
    NSArray *dataSource = @[@"http://img5.duitang.com/uploads/item/201410/13/20141013002336_ESvrT.jpeg",
                            @"http://mg.soupingguo.com/bizhi/big/10/285/619/10285619.jpg"];
    GSImageCollectionViewController *imageCollectionVC = [GSImageCollectionViewController viewControllerWithDataSource:dataSource];
    [self.navigationController pushViewController:imageCollectionVC animated:YES];
```
- Preset pageindex
```
    NSArray *dataSource = @[@"http://img5.duitang.com/uploads/item/201410/13/20141013002336_ESvrT.jpeg",
                            @"http://mg.soupingguo.com/bizhi/big/10/285/619/10285619.jpg"];
    GSImageCollectionViewController *imageCollectionVC = [GSImageCollectionViewController viewControllerWithDataSource:dataSource];
    imageCollectionVC.defaultPageIndex = 1;
    [self.navigationController pushViewController:imageCollectionVC animated:YES];
```

## Requirements

- iOS7.0 (>=)
- ARC

## License
GSImageViewer is released under the MIT license. See LICENSE for details.
