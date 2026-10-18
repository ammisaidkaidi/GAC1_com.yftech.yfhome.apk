# GAC1_com.yftech.yfhome.apk

> Decompiled source repository for `com.yftech.yfhome.apk`.

## Summary

- **APK file name**: `com.yftech.yfhome.apk`
- **Package name**: `com.yftech.yfhome`
- **Version**: `?` (versionCode `?`)
- **Min SDK**: `26`  |  **Target SDK**: `26`
- **Total decompiled classes**: `611`
- **Decompiled on**: 2026-10-18 12:22:30 UTC
- **Source repo**: [ammisaidkaidi/yftech-apks](https://github.com/ammisaidkaidi/yftech-apks)

## What this app does (inferred)

- Home / launcher application (yfhome = YF Home)
- Bluetooth access
- Network access
- Location access (GPS)
- External storage access
- Overlay / system alert window

Inference is based on the APK file name, package name, declared permissions, registered services/receivers, and top-level Java package structure. Manual review of the source under `jadx_out/sources/` is recommended for definitive behavior.

## Permissions

- `android.permission.ACCESS_COARSE_LOCATION`  (ACCESS_COARSE_LOCATION)
- `android.permission.ACCESS_FINE_LOCATION`  (ACCESS_FINE_LOCATION)
- `android.permission.ACCESS_NETWORK_STATE`  (ACCESS_NETWORK_STATE)
- `android.permission.ACCESS_WIFI_STATE`  (ACCESS_WIFI_STATE)
- `android.permission.BLUETOOTH`  (BLUETOOTH)
- `android.permission.BLUETOOTH_ADMIN`  (BLUETOOTH_ADMIN)
- `android.permission.CHANGE_CONFIGURATION`  (CHANGE_CONFIGURATION)
- `android.permission.CHANGE_NETWORK_STATE`  (CHANGE_NETWORK_STATE)
- `android.permission.CHANGE_WIFI_STATE`  (CHANGE_WIFI_STATE)
- `android.permission.INTERNET`  (INTERNET)
- `android.permission.MASTER_CLEAR`  (MASTER_CLEAR)
- `android.permission.READ_EXTERNAL_STORAGE`  (READ_EXTERNAL_STORAGE)
- `android.permission.READ_SETTINGS`  (READ_SETTINGS)
- `android.permission.SYSTEM_ALERT_WINDOW`  (SYSTEM_ALERT_WINDOW)
- `android.permission.WRITE_EXTERNAL_STORAGE`  (WRITE_EXTERNAL_STORAGE)
- `android.permission.WRITE_SECURE_SETTINGS`  (WRITE_SECURE_SETTINGS)
- `android.permission.WRITE_SETTINGS`  (WRITE_SETTINGS)
- `beantechs.permission.DATATRACK`
- `com.yftech.permission.media.service`
- `com.yftech.permission.service.bluetooth`
- `com.yftech.permission.service.main.audio`
- `com.yftech.permission.service.main.audio.effect`
- `com.yftech.permission.service.main.data`
- `com.yftech.permission.service.main.input`
- `com.yftech.permission.service.main.screen`
- `com.yftech.permission.service.transfer.phonelink`
- `com.yftech.permission.service.vehicle.COMMON`

## App components (from AndroidManifest.xml)

**Application class**: `com.yftech.yfhome.utils.HomeApplication`
**Launcher activity**: `com.yftech.yfhome.view.HomeActivity`

### Activities (1)

- `com.yftech.yfhome.view.HomeActivity`

### Services (0)

- (none)

### Broadcast receivers (0)

- (none)

### Content providers (0)

- (none)

## Java package structure

**Top-level packages**: `android`, `androidx`, `com`

**Detected third-party libraries**:

- Android framework (system)  (1 top-level entries)
- Android Jetpack (AndroidX libraries)  (1 top-level entries)

**Custom (non-library) packages — depth 2**:

- `com.yftech`
- `com.yftech.yfhome`
- `com.yftech.yfhome.bean`
- `com.yftech.yfhome.guide`
- `com.yftech.yfhome.presenter`
- `com.yftech.yfhome.utils`
- `com.yftech.yfhome.view`

## Key classes & method signatures

Per custom package, the top-level classes (up to 8 each) and their first few public method signatures.

### `com.yftech`  (0 class files in this folder)

(no top-level classes in this package)

### `com.yftech.yfhome`  (2 class files in this folder)

- **class `BuildConfig`**  (`BuildConfig.java`, ~12 lines)

- **class `R`**  (`R.java`, ~2762 lines)

### `com.yftech.yfhome.bean`  (2 class files in this folder)

- **class `DabChannelInfo`**  (`DabChannelInfo.java`, ~115 lines)
  - `int getCaId(...)`
  - `int getDynPty(...)`
  - `int getEnsembleId(...)`
  - `DabLabel getEnsembleLabel(...)`
  - `int getEnsembleTab(...)`
  - `long getFrequency(...)`
  - `int getInternTableIdDpty(...)`
  - `int getInternTableIdSpty(...)`
  - `byte getPdFlag(...)`
  - `int getPropertiesTab(...)`
  - `DabLabel getPropertieslabel(...)`
  - `long getServiceId(...)`
  - `int getStatPty(...)`
  - `boolean isCaApplied(...)`

- **class `InvalidDabChannelInfo`**  (`InvalidDabChannelInfo.java`, ~9 lines)

### `com.yftech.yfhome.guide`  (2 class files in this folder)

- **class `GuideViewOpter`**  (`GuideViewOpter.java`, ~141 lines)
  - `GuideViewOpter getInstance(...)`
  - `boolean isShowing(...)`
  - `void onClick(...)`
  - `void opt(...)`

- **class `GuideViewWindowManager`**  (`GuideViewWindowManager.java`, ~47 lines)
  - `void add(...)`
  - `void remove(...)`

### `com.yftech.yfhome.presenter`  (4 class files in this folder)

- **class `BluetoothPresenter`**  (`BluetoothPresenter.java`, ~103 lines)
  - `void onBluetoothHfpConnectStatusChanged(...)`
  - `BluetoothPresenter getInstance(...)`
  - `int getBTPhoneConnectStatus(...)`
  - `boolean isBlueToothConnected(...)`
  - `void openBTView(...)`
  - `void setOnChangedBluetoothListener(...)`

- **class `CarPresenter`**  (`CarPresenter.java`, ~871 lines)
  - `void handleMessage(...)`
  - `void onACStateChanged(...)`
  - `void onAirCirculationStateChanged(...)`
  - `void onAutoModeChanged(...)`
  - `void onDriverTemperatureChanged(...)`
  - `void onIonStateChanged(...)`
  - `void onPassengerTemperatureChanged(...)`
  - `void onRearDefrostStateChanged(...)`
  - `void onWindSpeedChanged(...)`
  - `void onDriveModeChanged(...)`
  - `void onGearPositionChanged(...)`
  - `void onPowerModeChanged(...)`
  - `void onPowerStateChanged(...)`
  - `void onDriverDoorStateChanged(...)`
  - `void onHoodDoorStateChanged(...)`

- **class `MediaPresenter`**  (`MediaPresenter.java`, ~882 lines)
  - `void handleMessage(...)`
  - `void onBluetoothAvrcpConnectStateChanged(...)`
  - `void run(...)`
  - `void onBluetoothMediaPlaybackStateChanged(...)`
  - `void onBluetoothMediaTrackInfoChanged(...)`
  - `void onChangePlayMode(...)`
  - `void onChangePlayMusic(...)`
  - `void onChangePlaying(...)`
  - `void onChangeProgress(...)`
  - `boolean onPlayError(...)`
  - `void onScanStatusChange(...)`
  - `void onUsbStatusChange(...)`
  - `void onConnectedStatusChanged(...)`
  - `void onDeviceChanged(...)`
  - `void onHicarReConnectStateChange(...)`

- **class `RadioPresenter`**  (`RadioPresenter.java`, ~988 lines)
  - `void handleMessage(...)`
  - `void onAudioFocusChange(...)`
  - `void onFavorChange(...)`
  - `void onFreqChanage(...)`
  - `void onFreqSignal(...)`
  - `void onPlayPause(...)`
  - `void onRdsCommonStringChange(...)`
  - `void onSeekStatusChange(...)`
  - `void onCarDataChanged(...)`
  - `void onEnsembleListChange(...)`
  - `void onEpgDataChange(...)`
  - `void onFavorChange(...)`
  - `void onPlayPause(...)`
  - `void onPlayStatusChange(...)`
  - `void onScanStatusChange(...)`

### `com.yftech.yfhome.utils`  (14 class files in this folder)

- **class `AudioSettingUtil`**  (`AudioSettingUtil.java`, ~59 lines)
  - `int getCurrentMediaSource(...)`
  - `void playSystemClickSoundEffect(...)`

- **class `BitmapUtils`**  (`BitmapUtils.java`, ~111 lines)
  - `boolean canUseForInBitmap(...)`
  - `Bitmap decodeSampledBitmapFromFile(...)`
  - `Bitmap drawableToBitmap(...)`
  - `byte[] getBitmapByte(...)`
  - `Bitmap getBitmapFromByte(...)`
  - `int getBytesPerPixel(...)`

- **class `Constants`**  (`Constants.java`, ~8 lines)

- **class `DialogUtils`**  (`DialogUtils.java`, ~94 lines)
  - `void onClick(...)`
  - `DialogUtils setContent(...)`
  - `DialogUtils setOnButtonListener(...)`
  - `DialogUtils setTitleAndContentAndBtnStr(...)`

- **class `DrawableTextView`**  (`DrawableTextView.java`, ~116 lines)
  - `boolean onTouchEvent(...)`
  - `void setOnDrawableLeftListener(...)`
  - `void setOnDrawableRightListener(...)`

- **class `ForcedTextView`**  (`ForcedTextView.java`, ~20 lines)
  - `boolean isFocused(...)`

- **class `HomeApplication`**  (`HomeApplication.java`, ~61 lines)
  - `HomeApplication getInstance(...)`
  - `void onConfigurationChanged(...)`
  - `void onCreate(...)`
  - `void onTerminate(...)`
  - `void registerConfigurationChangeLisenter(...)`
  - `void unRegisterConfigurationChangeLisenter(...)`

- **class `MarqueeTextView`**  (`MarqueeTextView.java`, ~119 lines)
  - `void handleMessage(...)`
  - `void run(...)`
  - `boolean isFocused(...)`
  - `void setText(...)`

### `com.yftech.yfhome.view`  (3 class files in this folder)

- **class `HomeActivity`**  (`HomeActivity.java`, ~2216 lines)
  - `void handleMessage(...)`
  - `void onPageScrollStateChanged(...)`
  - `void onPageScrolled(...)`
  - `void onPageSelected(...)`
  - `boolean onTouch(...)`
  - `boolean onTouch(...)`
  - `boolean onTouch(...)`
  - `void onReceive(...)`
  - `void resetSourceSelectPressedStatus(...)`
  - `void onCancel(...)`
  - `void onSure(...)`
  - `void setCurrWallPaperMode(...)`
  - `void showMediaMessageView(...)`
  - `void run(...)`
  - `void showSourceSelectView(...)`

- **class `SourcePagerAdapter`**  (`SourcePagerAdapter.java`, ~38 lines)
  - `void destroyItem(...)`
  - `int getCount(...)`
  - `Object instantiateItem(...)`
  - `boolean isViewFromObject(...)`

- **class `TestReceiver`**  (`TestReceiver.java`, ~53 lines)
  - `boolean isAirConditionOn(...)`
  - `boolean isOneWindOn(...)`
  - `boolean isTestEngineOn(...)`
  - `boolean isTestOn(...)`
  - `void onReceive(...)`

## Decompilation methodology

This repo was produced by the following pipeline:

1. **APK download** — raw file fetched via the GitHub raw URL (no repo clone).
2. **apktool d** — decoded `AndroidManifest.xml`, resources (`res/`), `assets/`, native libs (`lib/`), and produced `apktool.yml` metadata.
3. **jadx -d** — produced Java-readable decompiled sources under `jadx_out/sources/`.
4. **Static analysis pass** — parsed manifest + walked `jadx_out/sources/` to enumerate packages, classes, methods, and detect known third-party libraries.
5. **README auto-generation** — produced this file with the static analysis results.

### Reproducing

```bash
# 1) download the APK (raw, no clone)
curl -L -o com.yftech.yfhome.apk \
  'https://raw.githubusercontent.com/ammisaidkaidi/yftech-apks/main/com.yftech.yfhome.apk'

# 2) decode resources + manifest
apktool d -f -o apktool_out com.yftech.yfhome.apk

# 3) decompile to Java-readable sources
jadx -d jadx_out --no-res com.yftech.yfhome.apk
```

> Note: `--no-res` is passed to jadx because apktool already decoded resources.

## Directory layout

``
GAC1_com.yftech.yfhome.apk/
├── README.md                  <- this file
├── com.yftech.yfhome.apk                 <- original APK binary
├── apktool_out/               <- apktool output (resources, manifest, smali)
└── jadx_out/                  <- jadx output (Java-readable sources)
```

### apktool_out/
```
├── AndroidManifest.xml
├── apktool.yml
├── original/
│   ├── AndroidManifest.xml
│   └── META-INF/
├── res/
│   ├── anim/
│   ├── color/
│   ├── drawable/
│   ├── drawable-hdpi/
│   ├── drawable-ldrtl-hdpi/
│   ├── drawable-ldrtl-mdpi/
│   ├── drawable-ldrtl-xhdpi/
│   ├── drawable-ldrtl-xxhdpi/
│   ├── drawable-ldrtl-xxxhdpi/
│   ├── drawable-mdpi/
│   ├── drawable-watch/
│   ├── drawable-xhdpi/
│   ├── drawable-xxhdpi/
│   ├── drawable-xxxhdpi/
│   ├── interpolator/
│   ├── layout/
│   ├── layout-watch/
│   ├── mipmap-anydpi/
│   ├── mipmap-hdpi/
│   └── mipmap-ldrtl-mdpi/
│   └── ... (102 more entries)
├── smali/
│   ├── android/
│   ├── androidx/
│   └── com/
└── unknown/
    └── META-INF/
```

### jadx_out/
```
├── resources/
└── sources/
    ├── android/
    ├── androidx/
    └── com/
```

## Disclaimer

This repository contains decompiled (reverse-engineered) Java source code and resources derived from a binary APK. Decompilation was performed for research, interoperability, and educational purposes.

- The decompiled code is **not** the original source — variable names, comments, generics, and some control flow may have been lost or simplified during compilation/decompilation.
- All trademarks, copyrights, and IP belong to their respective owners (YF Tech / 御驾 (YF) Automotive).
- The author of this repo does not host the original APK on this repo's remote — only the decompiled artifacts. The original APK is publicly listed at the source repository cited above.
- This repository is for **analysis only**. Do not use it to redistribute or rebuild the original application.