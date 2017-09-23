
pushd .

mkdir build-iOS
cd build-iOS
mkdir iphone_simulator
mkdir iphone_os

cd iphone_simulator
cmake \
-DCMAKE_TOOLCHAIN_FILE=../../iossimxc.toolchain.cmake  \
-DCMAKE_IOS_DEVELOPER_ROOT=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/ 	\
-DCMAKE_IOS_SDK_ROOT=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneOS.sdk/  \
-GXcode ../../
cd ../


cd iphone_os
cmake \
-DCMAKE_TOOLCHAIN_FILE=../../ios.toolchain.cmake  \
-DCMAKE_IOS_DEVELOPER_ROOT=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/ 	\
-DCMAKE_IOS_SDK_ROOT=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/  \
-GXcode ../../
cd ../


popd .
