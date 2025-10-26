## OpenSSL for android-riscv64
### Android NDK
```gradle
android {
    ndkVersion = "27.3.13750724"
}
```
### Android SDK
```gradle
defaultConfig {
    minSdk = 35
}
```
### Features
As of version 3.5.3, [crypto/sha/sha_riscv.c](https://github.com/openssl/openssl/blob/openssl-3.5.3/crypto/sha/sha_riscv.c) depends on `SHA256_CTX`, which is marked as deprecated in [include/openssl/sha.h](https://github.com/openssl/openssl/blob/openssl-3.5.3/include/openssl/sha.h).


## AWS-LC for android
### [aws-lc](https://github.com/aws/aws-lc/releases)
```shell
cmake -S . -B build \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_INSTALL_PREFIX=${HOME}/android/local \
      -DANDROID_PLATFORM=android-31 \
      -DANDROID_ABI=arm64-v8a \
      -DCMAKE_TOOLCHAIN_FILE=${ANDROID_NDK_ROOT}/build/cmake/android.toolchain.cmake \
      -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
      -DBUILD_SHARED_LIBS=ON \
      -DBUILD_TESTING=OFF \
      -DDISABLE_GO=ON
```

### [ngtcp2](https://github.com/SanmerDev/ngtcp2/branches)
```shell
cmake -S . -B build \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_INSTALL_PREFIX=${HOME}/android/local \
      -DANDROID_PLATFORM=android-31 \
      -DANDROID_ABI=arm64-v8a \
      -DCMAKE_TOOLCHAIN_FILE=${ANDROID_NDK_ROOT}/build/cmake/android.toolchain.cmake \
      -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
      -DENABLE_LIB_ONLY=ON \
      -DENABLE_SHARED_LIB=ON \
      -DENABLE_STATIC_LIB=OFF \
      -DENABLE_BORINGSSL=ON \
      -DCMAKE_FIND_ROOT_PATH=${HOME}/Android/local \
      -DCMAKE_FIND_ROOT_PATH_MODE_INCLUDE=BOTH \
      -DCMAKE_FIND_ROOT_PATH_MODE_LIBRARY=BOTH
```
