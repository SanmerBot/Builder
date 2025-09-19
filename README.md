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
## Features
As of version 3.5.3, [crypto/sha/sha_riscv.c](https://github.com/openssl/openssl/blob/openssl-3.5.3/crypto/sha/sha_riscv.c) depends on `SHA256_CTX`, which is marked as deprecated in [include/openssl/sha.h](https://github.com/openssl/openssl/blob/openssl-3.5.3/include/openssl/sha.h).
