#/bin/sh

mkdir iphoneos
mkdir iphonesimulator
cp -R GooglePlaces.framework/ iphoneos/GooglePlaces.framework
cp -R GooglePlaces.framework/ iphonesimulator/GooglePlaces.framework
xcrun lipo -remove x86_64 iphoneos/GooglePlaces.framework/GooglePlaces -o ./iphoneos/GooglePlaces.framework/GooglePlaces
xcrun vtool -arch arm64 -set-build-version 7 13.0 15.2 -replace -output iphoneos/GooglePlaces.framework/GooglePlaces.reworked iphoneos/GooglePlaces.framework/GooglePlaces
xcrun lipo -remove arm64 iphonesimulator/GooglePlaces.framework/GooglePlaces -o ./iphonesimulator/GooglePlaces.framework/GooglePlaces
xcrun lipo -create iphoneos/GooglePlaces.framework/GooglePlaces.reworked iphonesimulator/GooglePlaces.framework/GooglePlaces -output ./iphonesimulator/GooglePlaces.framework/GooglePlaces
xcodebuild -create-xcframework -framework iphoneos/GooglePlaces.framework -framework iphonesimulator/GooglePlaces.framework -output GooglePlaces.xcframework